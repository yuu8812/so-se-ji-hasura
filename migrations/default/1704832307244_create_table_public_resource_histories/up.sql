CREATE TABLE "public"."resource_histories" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "markup_text" text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "edited_user_id" uuid NOT NULL, "resource_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("edited_user_id") REFERENCES "public"."users"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("resource_id") REFERENCES "public"."resources"("id") ON UPDATE restrict ON DELETE restrict);
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
CREATE TRIGGER "set_public_resource_histories_updated_at"
BEFORE UPDATE ON "public"."resource_histories"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_resource_histories_updated_at" ON "public"."resource_histories"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
