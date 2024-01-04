alter table "public"."laws"
  add constraint "laws_law_category_fkey"
  foreign key (law_category)
  references "public"."law_categories"
  (id) on update no action on delete no action;
alter table "public"."laws" alter column "law_category" drop not null;
alter table "public"."laws" add column "law_category" uuid;
