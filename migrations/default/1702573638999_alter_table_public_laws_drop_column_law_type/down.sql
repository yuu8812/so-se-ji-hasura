alter table "public"."laws" alter column "law_type" drop not null;
alter table "public"."laws" add column "law_type" text;
