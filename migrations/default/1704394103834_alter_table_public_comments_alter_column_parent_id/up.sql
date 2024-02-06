alter table "public"."comments" alter column "parent_id" drop not null;
alter table "public"."comments" rename column "parent_id" to "law_id";
