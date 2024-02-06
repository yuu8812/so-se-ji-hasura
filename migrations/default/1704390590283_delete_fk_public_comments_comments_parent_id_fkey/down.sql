alter table "public"."comments"
  add constraint "comments_parent_id_fkey"
  foreign key ("parent_id")
  references "public"."law_revisions"
  ("id") on update restrict on delete restrict;
