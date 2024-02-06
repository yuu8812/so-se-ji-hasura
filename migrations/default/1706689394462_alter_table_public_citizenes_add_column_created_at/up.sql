alter table "public"."citizenes" add column "created_at" timestamptz
 not null default now();
