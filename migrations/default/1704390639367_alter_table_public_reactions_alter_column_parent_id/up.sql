alter table "public"."reactions" alter column "parent_id" drop not null;
alter table "public"."reactions" rename column "parent_id" to "law_id";
