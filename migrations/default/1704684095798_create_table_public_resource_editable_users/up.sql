CREATE TABLE "public"."resource_editable_users" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "resource_id" uuid NOT NULL, "user_id" uuid NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
