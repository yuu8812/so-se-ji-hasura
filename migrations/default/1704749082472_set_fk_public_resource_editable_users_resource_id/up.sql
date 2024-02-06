alter table "public"."resource_editable_users"
  add constraint "resource_editable_users_resource_id_fkey"
  foreign key ("resource_id")
  references "public"."resources"
  ("id") on update restrict on delete restrict;
