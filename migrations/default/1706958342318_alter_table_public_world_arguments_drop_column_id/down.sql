alter table "public"."world_arguments" alter column "id" set default gen_random_uuid();
alter table "public"."world_arguments" alter column "id" drop not null;
alter table "public"."world_arguments" add column "id" uuid;
