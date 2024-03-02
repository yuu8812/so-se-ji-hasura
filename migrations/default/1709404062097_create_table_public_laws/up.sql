CREATE TABLE "public"."laws" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "type" integer NOT NULL DEFAULT 0, "place" text NOT NULL, "newness" integer NOT NULL DEFAULT 0, "author_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("author_id") REFERENCES "public"."users"("id") ON UPDATE restrict ON DELETE restrict);
CREATE EXTENSION IF NOT EXISTS pgcrypto;
