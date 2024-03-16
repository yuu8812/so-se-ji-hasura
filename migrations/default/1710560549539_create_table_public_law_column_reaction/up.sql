CREATE TABLE "public"."law_column_reaction" ("refer_country__law_column_id" integer, "refer_user_law_column_id" uuid, "law_revision_id" uuid NOT NULL, "user_id" uuid NOT NULL, "type" integer NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("refer_country__law_column_id","law_revision_id","refer_user_law_column_id","user_id","type") , FOREIGN KEY ("law_revision_id", "refer_country__law_column_id", "refer_user_law_column_id") REFERENCES "public"."law_column"("law_revision_id", "refer_country__law_column_id", "refer_user_law_column_id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE restrict ON DELETE restrict);
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
CREATE TRIGGER "set_public_law_column_reaction_updated_at"
BEFORE UPDATE ON "public"."law_column_reaction"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_law_column_reaction_updated_at" ON "public"."law_column_reaction"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
