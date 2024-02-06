alter table "public"."citizens" alter column "species" set default 0;
alter table "public"."citizens" alter column "species" drop not null;
alter table "public"."citizens" add column "species" int4;
