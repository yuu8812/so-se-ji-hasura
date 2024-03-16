alter table "public"."country_law_column_reactions" alter column "column_id" drop not null;
alter table "public"."country_law_column_reactions" add column "column_id" int4;
