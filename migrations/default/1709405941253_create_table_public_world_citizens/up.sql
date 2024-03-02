CREATE TABLE "public"."world_citizens" ("world_id" uuid NOT NULL, "citizen_id" uuid NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "status" integer NOT NULL DEFAULT 0, PRIMARY KEY ("world_id","citizen_id") , FOREIGN KEY ("world_id") REFERENCES "public"."worlds"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("citizen_id") REFERENCES "public"."citizens"("id") ON UPDATE restrict ON DELETE restrict);
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
CREATE TRIGGER "set_public_world_citizens_updated_at"
BEFORE UPDATE ON "public"."world_citizens"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_world_citizens_updated_at" ON "public"."world_citizens"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
