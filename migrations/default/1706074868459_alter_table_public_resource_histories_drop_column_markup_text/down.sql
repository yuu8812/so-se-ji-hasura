alter table "public"."resource_histories" alter column "markup_text" drop not null;
alter table "public"."resource_histories" add column "markup_text" text;
