CREATE TABLE "public"."views" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "user_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE no action ON DELETE no action);
CREATE EXTENSION IF NOT EXISTS pgcrypto;
