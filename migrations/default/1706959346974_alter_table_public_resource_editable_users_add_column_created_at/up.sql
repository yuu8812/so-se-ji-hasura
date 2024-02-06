alter table "public"."resource_editable_users" add column "created_at" timestamptz
 not null default now();
