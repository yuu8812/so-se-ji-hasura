alter table "public"."comments" rename column "law_id" to "parent_id";
alter table "public"."comments" alter column "parent_id" set not null;
