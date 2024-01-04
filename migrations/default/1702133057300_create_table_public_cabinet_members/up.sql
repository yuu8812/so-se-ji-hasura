CREATE TABLE "public"."cabinet_members" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
