CREATE TABLE "public"."chat_box_last_visited_dates" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "chat_box_id" uuid NOT NULL, "user_id" uuid NOT NULL, "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("chat_box_id") REFERENCES "public"."world_chat_boxes"("id") ON UPDATE restrict ON DELETE restrict);
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
CREATE TRIGGER "set_public_chat_box_last_visited_dates_updated_at"
BEFORE UPDATE ON "public"."chat_box_last_visited_dates"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_chat_box_last_visited_dates_updated_at" ON "public"."chat_box_last_visited_dates"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
