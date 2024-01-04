alter table "public"."cabinet_histories" alter column "diet_id" drop not null;
alter table "public"."cabinet_histories" add column "diet_id" uuid;
