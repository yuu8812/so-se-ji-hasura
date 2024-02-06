alter table "public"."resource_editable_users"
  add constraint "resource_editable_users_user_id_fkey"
  foreign key ("user_id")
  references "public"."users"
  ("id") on update restrict on delete restrict;
