alter table "public"."reactions"
  add constraint "reactions_parent_id_fkey2"
  foreign key ("parent_id")
  references "public"."comments"
  ("id") on update restrict on delete restrict;
