alter table "public"."law_revisions" alter column "num" set default 8;
alter table "public"."law_revisions" alter column "num" drop not null;
alter table "public"."law_revisions" add column "num" int4;
