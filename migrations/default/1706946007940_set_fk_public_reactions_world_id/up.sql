alter table "public"."reactions"
  add constraint "reactions_world_id_fkey"
  foreign key ("world_id")
  references "public"."worlds"
  ("id") on update restrict on delete restrict;
