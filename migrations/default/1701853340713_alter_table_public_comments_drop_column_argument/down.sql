alter table "public"."comments" alter column "argument" drop not null;
alter table "public"."comments" add column "argument" uuid;
