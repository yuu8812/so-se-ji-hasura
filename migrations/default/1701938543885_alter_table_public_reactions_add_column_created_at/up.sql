alter table "public"."reactions" add column "created_at" timestamptz
 null default now();
