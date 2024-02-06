alter table "public"."reactions"
  add constraint "reactions_parent_id_fkey"
  foreign key ("parent_id")
  references "public"."laws"
  ("id") on update restrict on delete restrict;
