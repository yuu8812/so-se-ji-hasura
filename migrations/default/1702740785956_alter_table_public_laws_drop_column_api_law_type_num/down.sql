alter table "public"."laws" alter column "api_law_type_num" drop not null;
alter table "public"."laws" add column "api_law_type_num" text;
