alter table "public"."resources" alter column "resource_group_id" drop not null;
alter table "public"."resources" add column "resource_group_id" uuid;
