alter table "public"."reactions"
  add constraint "reactions_law_id_fkey"
  foreign key ("law_id")
  references "public"."laws"
  ("id") on update restrict on delete restrict;
