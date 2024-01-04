CREATE EXTENSION IF NOT EXISTS pgcrypto;
alter table "public"."argument_resources" add column "argument_id" uuid
 null default gen_random_uuid();
