alter table "public"."comments" alter column "law_id" drop not null;
alter table "public"."comments" add column "law_id" uuid;
