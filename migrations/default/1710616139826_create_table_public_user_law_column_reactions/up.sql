CREATE TABLE "public"."user_law_column_reactions" ("user_id" uuid NOT NULL, "type" integer NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "column_id" uuid NOT NULL, "law_revision_id" uuid NOT NULL, PRIMARY KEY ("user_id","type","column_id","law_revision_id") , FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("law_revision_id", "column_id") REFERENCES "public"."user_law_column"("law_revision_id", "column_id") ON UPDATE restrict ON DELETE restrict);
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
CREATE TRIGGER "set_public_user_law_column_reactions_updated_at"
BEFORE UPDATE ON "public"."user_law_column_reactions"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_user_law_column_reactions_updated_at" ON "public"."user_law_column_reactions"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
