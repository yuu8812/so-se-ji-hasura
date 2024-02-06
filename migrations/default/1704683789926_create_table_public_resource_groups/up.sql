CREATE TABLE "public"."resource_groups" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "world_id" uuid NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
