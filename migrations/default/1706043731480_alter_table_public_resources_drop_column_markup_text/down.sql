alter table "public"."resources" alter column "markup_text" drop not null;
alter table "public"."resources" add column "markup_text" text;
