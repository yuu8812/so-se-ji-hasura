alter table "public"."resource_editable_users" alter column "id" set default gen_random_uuid();
alter table "public"."resource_editable_users" alter column "id" drop not null;
alter table "public"."resource_editable_users" add column "id" uuid;
