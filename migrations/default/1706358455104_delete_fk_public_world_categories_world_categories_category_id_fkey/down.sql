alter table "public"."world_categories"
  add constraint "world_categories_category_id_fkey"
  foreign key ("category_ja")
  references "public"."law_categories"
  ("category_ja") on update restrict on delete restrict;
