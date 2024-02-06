CREATE TABLE "public"."law_summaries" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "text" text NOT NULL, "user_id" uuid NOT NULL, "law_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("law_id") REFERENCES "public"."laws"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE restrict ON DELETE restrict);
CREATE EXTENSION IF NOT EXISTS pgcrypto;
