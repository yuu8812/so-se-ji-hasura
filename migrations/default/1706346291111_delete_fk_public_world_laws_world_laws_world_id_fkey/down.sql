alter table "public"."world_laws"
  add constraint "world_laws_world_id_fkey"
  foreign key ("world_id")
  references "public"."world_histories"
  ("id") on update restrict on delete restrict;
