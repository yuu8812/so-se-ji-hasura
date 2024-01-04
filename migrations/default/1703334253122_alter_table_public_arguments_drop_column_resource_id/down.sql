alter table "public"."arguments" alter column "resource_id" set default gen_random_uuid();
alter table "public"."arguments" alter column "resource_id" drop not null;
alter table "public"."arguments" add column "resource_id" uuid;
