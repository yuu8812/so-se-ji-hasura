alter table "public"."world_citizens" alter column "id" set default gen_random_uuid();
alter table "public"."world_citizens" alter column "id" drop not null;
alter table "public"."world_citizens" add column "id" uuid;
