alter table "public"."world_categories" add column "created_at" timestamptz
 null default now();
