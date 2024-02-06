CREATE TABLE "public"."law_revision_column" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "column_id" text NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
