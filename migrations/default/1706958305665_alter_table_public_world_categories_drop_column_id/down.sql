alter table "public"."world_categories" alter column "id" set default gen_random_uuid();
alter table "public"."world_categories" alter column "id" drop not null;
alter table "public"."world_categories" add column "id" uuid;
