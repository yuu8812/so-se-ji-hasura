alter table "public"."citizens"
  add constraint "citizenes_user_id_fkey"
  foreign key ("user_id")
  references "public"."users"
  ("id") on update restrict on delete restrict;
