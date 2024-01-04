CREATE EXTENSION IF NOT EXISTS pgcrypto;
alter table "public"."arguments" add column "resource_id" uuid
 null default gen_random_uuid();
