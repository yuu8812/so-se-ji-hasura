alter table "public"."law_views" add column "created_at" timestamptz
 null default now();
