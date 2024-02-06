alter table "public"."resource_groups"
  add constraint "resource_groups_world_id_fkey"
  foreign key ("world_id")
  references "public"."worlds"
  ("id") on update restrict on delete restrict;
