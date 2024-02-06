alter table "public"."world_citizens"
  add constraint "world_citizens_citizen_id_fkey"
  foreign key ("citizen_id")
  references "public"."citizens"
  ("id") on update restrict on delete restrict;