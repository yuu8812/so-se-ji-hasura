alter table "public"."comments"
  add constraint "comments_arguments_fkey"
  foreign key ("arguments")
  references "public"."arguments"
  ("id") on update restrict on delete restrict;
