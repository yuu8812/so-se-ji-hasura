alter table "public"."reactions" rename column "law_id" to "parent_id";
alter table "public"."reactions" alter column "parent_id" set not null;
