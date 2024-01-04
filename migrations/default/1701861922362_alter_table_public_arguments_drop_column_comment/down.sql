alter table "public"."arguments" alter column "comment" drop not null;
alter table "public"."arguments" add column "comment" uuid;
