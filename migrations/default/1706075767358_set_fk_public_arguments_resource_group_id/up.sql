alter table "public"."arguments"
  add constraint "arguments_resource_group_id_fkey"
  foreign key ("resource_group_id")
  references "public"."resource_groups"
  ("id") on update restrict on delete restrict;
