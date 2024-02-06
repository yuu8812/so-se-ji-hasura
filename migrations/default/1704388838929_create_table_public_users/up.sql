CREATE TABLE "public"."users" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "authentication_id" text NOT NULL, "name" text NOT NULL, "icon_url" text, "age" integer, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
