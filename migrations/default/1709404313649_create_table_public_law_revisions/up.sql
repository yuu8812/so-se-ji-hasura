CREATE TABLE "public"."law_revisions" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "law_id" uuid NOT NULL, "title" text NOT NULL, "description" text NOT NULL, "law_image_url" text NOT NULL, "law_status" integer, "law_type" integer, "block_json" text, "data_xml" text, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("law_id") REFERENCES "public"."laws"("id") ON UPDATE restrict ON DELETE restrict);
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_law_revisions_updated_at"
BEFORE UPDATE ON "public"."law_revisions"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_law_revisions_updated_at" ON "public"."law_revisions"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
