alter table "public"."law_column" add column "created_at" timestamptz
 not null default now();
