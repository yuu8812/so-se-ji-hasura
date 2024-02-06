alter table "public"."world_histories"
  add constraint "world_histories_editor_id_fkey"
  foreign key ("editor_id")
  references "public"."users"
  ("id") on update restrict on delete restrict;
