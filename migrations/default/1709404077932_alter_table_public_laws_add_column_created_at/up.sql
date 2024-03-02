alter table "public"."laws" add column "created_at" timestamptz
 not null default now();
