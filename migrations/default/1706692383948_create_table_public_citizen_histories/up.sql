CREATE TABLE "public"."citizen_histories" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "citizen_id" uuid NOT NULL, "world_id" uuid NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("citizen_id") REFERENCES "public"."citizenes"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("world_id") REFERENCES "public"."worlds"("id") ON UPDATE restrict ON DELETE restrict);
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
CREATE TRIGGER "set_public_citizen_histories_updated_at"
BEFORE UPDATE ON "public"."citizen_histories"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_citizen_histories_updated_at" ON "public"."citizen_histories"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
