alter table "public"."resource_groups"
  add constraint "resource_groups_resource_id_fkey"
  foreign key ("resource_id")
  references "public"."resources"
  ("id") on update restrict on delete restrict;
