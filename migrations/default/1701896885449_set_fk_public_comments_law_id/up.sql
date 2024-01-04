alter table "public"."comments"
  add constraint "comments_law_id_fkey"
  foreign key ("law_id")
  references "public"."laws"
  ("id") on update no action on delete no action;
