alter table "public"."law_revisions" alter column "enforcement_date" drop not null;
alter table "public"."law_revisions" add column "enforcement_date" text;
