alter table "public"."laws"
  add constraint "laws_law_category_fkey"
  foreign key ("law_category")
  references "public"."law_categories"
  ("category_number") on update no action on delete no action;
