alter table "public"."laws" alter column "argument_id" set default gen_random_uuid();
alter table "public"."laws" alter column "argument_id" drop not null;
alter table "public"."laws" add column "argument_id" uuid;
