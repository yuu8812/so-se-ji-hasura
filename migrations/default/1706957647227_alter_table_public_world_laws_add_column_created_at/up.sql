alter table "public"."world_laws" add column "created_at" timestamptz
 not null default now();
