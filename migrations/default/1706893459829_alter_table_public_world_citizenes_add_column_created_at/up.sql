alter table "public"."world_citizenes" add column "created_at" timestamptz
 not null default now();
