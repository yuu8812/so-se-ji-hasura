alter table "public"."laws"
  add constraint "laws_author_id_fkey"
  foreign key ("author_id")
  references "public"."users"
  ("id") on update restrict on delete restrict;
