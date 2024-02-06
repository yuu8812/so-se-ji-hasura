alter table "public"."arguments"
  add constraint "arguments_law_id_fkey"
  foreign key ("law_id")
  references "public"."laws"
  ("id") on update restrict on delete restrict;
