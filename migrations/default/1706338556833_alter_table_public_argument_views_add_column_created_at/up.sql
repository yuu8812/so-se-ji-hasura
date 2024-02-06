alter table "public"."argument_views" add column "created_at" timestamptz
 null default now();
