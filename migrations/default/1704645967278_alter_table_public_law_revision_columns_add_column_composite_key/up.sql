CREATE EXTENSION IF NOT EXISTS pgcrypto;
alter table "public"."law_revision_columns" add column "composite_key" uuid
 null default gen_random_uuid();
