alter table "public"."citizens" alter column "image_url" drop not null;
alter table "public"."citizens" add column "image_url" text;
