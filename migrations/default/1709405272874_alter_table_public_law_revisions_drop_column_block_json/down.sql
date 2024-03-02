alter table "public"."law_revisions" alter column "block_json" drop not null;
alter table "public"."law_revisions" add column "block_json" text;
