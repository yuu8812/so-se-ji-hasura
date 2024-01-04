alter table "public"."views" add column "created_at" timestamptz
 null default now();
