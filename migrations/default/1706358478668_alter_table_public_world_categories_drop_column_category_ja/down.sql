alter table "public"."world_categories" alter column "category_ja" drop not null;
alter table "public"."world_categories" add column "category_ja" text;
