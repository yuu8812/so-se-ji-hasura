CREATE EXTENSION IF NOT EXISTS pgcrypto;
alter table "public"."country_law_column" add column "id" uuid
 not null default gen_random_uuid();
