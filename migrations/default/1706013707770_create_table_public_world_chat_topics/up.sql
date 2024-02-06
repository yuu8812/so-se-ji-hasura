CREATE TABLE "public"."world_chat_topics" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "title" text NOT NULL, "description" text NOT NULL, "status" integer NOT NULL DEFAULT 0, "world_id" uuid NOT NULL, "author_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("world_id") REFERENCES "public"."worlds"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("author_id") REFERENCES "public"."users"("id") ON UPDATE restrict ON DELETE restrict);
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
CREATE TRIGGER "set_public_world_chat_topics_updated_at"
BEFORE UPDATE ON "public"."world_chat_topics"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_world_chat_topics_updated_at" ON "public"."world_chat_topics"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
