CREATE TABLE "public"."argument_chat_box" ("id" uuid NOT NULL, "argument_id" uuid NOT NULL, "title" text NOT NULL, "desctiption" text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("argument_id") REFERENCES "public"."arguments"("id") ON UPDATE restrict ON DELETE restrict);
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
CREATE TRIGGER "set_public_argument_chat_box_updated_at"
BEFORE UPDATE ON "public"."argument_chat_box"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_argument_chat_box_updated_at" ON "public"."argument_chat_box"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
