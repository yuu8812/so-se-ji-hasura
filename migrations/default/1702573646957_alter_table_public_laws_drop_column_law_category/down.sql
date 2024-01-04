alter table "public"."laws" alter column "law_category" drop not null;
alter table "public"."laws" add column "law_category" text;
