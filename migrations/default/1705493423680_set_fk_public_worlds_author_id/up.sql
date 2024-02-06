alter table "public"."worlds"
  add constraint "worlds_author_id_fkey"
  foreign key ("author_id")
  references "public"."users"
  ("id") on update restrict on delete restrict;
