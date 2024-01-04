CREATE TABLE "public"."prime_ministers" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "first_name" text NOT NULL, "last_name" text NOT NULL, "first_name_kana" text NOT NULL, "last_name_kana" text NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
