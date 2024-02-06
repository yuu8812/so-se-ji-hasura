alter table "public"."argument_views" alter column "id" set default gen_random_uuid();
alter table "public"."argument_views" alter column "id" drop not null;
alter table "public"."argument_views" add column "id" uuid;
