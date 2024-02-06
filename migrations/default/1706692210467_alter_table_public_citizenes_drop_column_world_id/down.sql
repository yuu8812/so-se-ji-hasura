alter table "public"."citizenes" alter column "world_id" drop not null;
alter table "public"."citizenes" add column "world_id" uuid;
