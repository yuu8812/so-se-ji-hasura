alter table "public"."law_revision_columns" alter column "composite_key" set default gen_random_uuid();
alter table "public"."law_revision_columns" alter column "composite_key" drop not null;
alter table "public"."law_revision_columns" add column "composite_key" uuid;
