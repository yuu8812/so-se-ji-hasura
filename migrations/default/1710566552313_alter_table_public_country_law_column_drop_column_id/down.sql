alter table "public"."country_law_column" alter column "id" set default gen_random_uuid();
alter table "public"."country_law_column" alter column "id" drop not null;
alter table "public"."country_law_column" add column "id" uuid;
