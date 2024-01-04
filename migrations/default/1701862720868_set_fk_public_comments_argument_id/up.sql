alter table "public"."comments" drop constraint "comments_argument_id_fkey",
  add constraint "comments_argument_id_fkey"
  foreign key ("argument_id")
  references "public"."arguments"
  ("id") on update no action on delete no action;
