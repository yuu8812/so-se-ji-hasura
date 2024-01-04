alter table "public"."arguments"
  add constraint "arguments_comments_fkey"
  foreign key ("comments")
  references "public"."comments"
  ("id") on update restrict on delete restrict;
