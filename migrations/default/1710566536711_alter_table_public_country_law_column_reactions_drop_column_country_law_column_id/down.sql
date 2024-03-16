alter table "public"."country_law_column_reactions" alter column "country_law_column_id" drop not null;
alter table "public"."country_law_column_reactions" add column "country_law_column_id" uuid;
