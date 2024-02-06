alter table "public"."comments"
  add constraint "comments_parent_id_fkey1"
  foreign key ("parent_id")
  references "public"."laws"
  ("id") on update restrict on delete restrict;
