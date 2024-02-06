alter table "public"."arguments" alter column "resource_group_id" drop not null;
alter table "public"."arguments" add column "resource_group_id" uuid;
