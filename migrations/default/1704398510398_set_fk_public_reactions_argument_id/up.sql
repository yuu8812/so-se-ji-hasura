alter table "public"."reactions"
  add constraint "reactions_argument_id_fkey"
  foreign key ("argument_id")
  references "public"."arguments"
  ("id") on update restrict on delete restrict;