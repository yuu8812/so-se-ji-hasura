alter table "public"."world_categories" alter column "world_id" drop not null;
alter table "public"."world_categories" add column "world_id" uuid;
