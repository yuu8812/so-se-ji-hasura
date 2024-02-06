alter table "public"."arguments" add column "created_at" timestamptz
 null default now();
