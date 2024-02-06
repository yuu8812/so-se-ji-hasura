alter table "public"."world_histories"
  add constraint "world_histories_world_id_fkey"
  foreign key ("world_id")
  references "public"."worlds"
  ("id") on update restrict on delete restrict;
