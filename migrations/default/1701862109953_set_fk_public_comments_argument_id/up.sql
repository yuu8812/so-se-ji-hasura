alter table "public"."comments"
  add constraint "comments_argument_id_fkey"
  foreign key ("argument_id")
  references "public"."arguments"
  ("id") on update no action on delete set null;
