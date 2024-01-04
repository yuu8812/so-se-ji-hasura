alter table "public"."diet_members" add column "created_at" timestamptz
 null default now();
