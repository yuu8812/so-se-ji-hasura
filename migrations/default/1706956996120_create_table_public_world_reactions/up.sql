CREATE TABLE "public"."world_reactions" ("user_id" uuid NOT NULL, "world_id" uuid NOT NULL, "type" integer NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("user_id","world_id","type") , FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("world_id") REFERENCES "public"."worlds"("id") ON UPDATE restrict ON DELETE restrict);
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
CREATE TRIGGER "set_public_world_reactions_updated_at"
BEFORE UPDATE ON "public"."world_reactions"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_world_reactions_updated_at" ON "public"."world_reactions"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
