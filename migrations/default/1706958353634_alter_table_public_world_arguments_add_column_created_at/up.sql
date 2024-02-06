alter table "public"."world_arguments" add column "created_at" timestamptz
 null default now();
