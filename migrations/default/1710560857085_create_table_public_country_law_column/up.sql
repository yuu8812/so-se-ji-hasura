CREATE TABLE "public"."country_law_column" ("law_revision_id" uuid NOT NULL, "column_id" integer NOT NULL, "text" text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("law_revision_id","column_id") );
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
CREATE TRIGGER "set_public_country_law_column_updated_at"
BEFORE UPDATE ON "public"."country_law_column"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_country_law_column_updated_at" ON "public"."country_law_column"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
