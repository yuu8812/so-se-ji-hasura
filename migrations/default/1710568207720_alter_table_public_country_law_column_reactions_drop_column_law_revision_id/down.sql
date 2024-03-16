alter table "public"."country_law_column_reactions" alter column "law_revision_id" drop not null;
alter table "public"."country_law_column_reactions" add column "law_revision_id" uuid;
