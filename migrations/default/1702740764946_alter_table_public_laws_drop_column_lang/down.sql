alter table "public"."laws" alter column "lang" set default ''ja'::text';
alter table "public"."laws" alter column "lang" drop not null;
alter table "public"."laws" add column "lang" text;
