alter table "public"."law_revisions" alter column "law_full_text" drop not null;
alter table "public"."law_revisions" add column "law_full_text" text;
