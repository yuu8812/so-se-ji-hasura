alter table "public"."world_categories"
  add constraint "world_categories_world_id_fkey"
  foreign key ("world_id")
  references "public"."worlds"
  ("id") on update restrict on delete restrict;
