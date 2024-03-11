alter table "public"."laws" alter column "promulgate_day" drop not null;
alter table "public"."laws" add column "promulgate_day" text;
