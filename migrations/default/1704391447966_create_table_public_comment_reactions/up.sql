CREATE TABLE "public"."comment_reactions" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "type" integer NOT NULL, "comment_id" uuid NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("comment_id") REFERENCES "public"."comments"("id") ON UPDATE restrict ON DELETE restrict);
CREATE EXTENSION IF NOT EXISTS pgcrypto;
