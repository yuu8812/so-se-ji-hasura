CREATE TABLE "public"."species_assets" ("id" uuid NOT NULL, "personality" text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "species_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("species_id") REFERENCES "public"."species"("id") ON UPDATE restrict ON DELETE restrict);
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
CREATE TRIGGER "set_public_species_assets_updated_at"
BEFORE UPDATE ON "public"."species_assets"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_species_assets_updated_at" ON "public"."species_assets"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
