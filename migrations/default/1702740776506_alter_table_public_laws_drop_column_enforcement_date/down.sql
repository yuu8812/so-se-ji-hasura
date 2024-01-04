alter table "public"."laws" alter column "enforcement_date" drop not null;
alter table "public"."laws" add column "enforcement_date" text;
