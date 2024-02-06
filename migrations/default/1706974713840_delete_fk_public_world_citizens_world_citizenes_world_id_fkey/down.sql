alter table "public"."world_citizens"
  add constraint "world_citizenes_world_id_fkey"
  foreign key ("world_id")
  references "public"."worlds"
  ("id") on update restrict on delete restrict;
