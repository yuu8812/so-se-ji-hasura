alter table "public"."parties" alter column "diet_members" drop not null;
alter table "public"."parties" add column "diet_members" text;
