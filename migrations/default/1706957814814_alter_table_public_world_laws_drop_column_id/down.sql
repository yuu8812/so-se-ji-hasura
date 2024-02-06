alter table "public"."world_laws" alter column "id" set default gen_random_uuid();
alter table "public"."world_laws" alter column "id" drop not null;
alter table "public"."world_laws" add column "id" uuid;
