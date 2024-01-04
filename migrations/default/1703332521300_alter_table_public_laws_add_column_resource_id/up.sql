CREATE EXTENSION IF NOT EXISTS pgcrypto;
alter table "public"."laws" add column "resource_id" uuid
 null default gen_random_uuid();
