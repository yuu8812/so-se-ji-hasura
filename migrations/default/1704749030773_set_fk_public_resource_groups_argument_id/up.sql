alter table "public"."resource_groups"
  add constraint "resource_groups_argument_id_fkey"
  foreign key ("argument_id")
  references "public"."arguments"
  ("id") on update restrict on delete restrict;
