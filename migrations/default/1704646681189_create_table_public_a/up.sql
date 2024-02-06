CREATE TABLE "public"."a" ("a" uuid NOT NULL DEFAULT gen_random_uuid(), "b" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("a","b") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
