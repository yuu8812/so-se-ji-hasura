CREATE TABLE "public"."cabinet_histories" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
