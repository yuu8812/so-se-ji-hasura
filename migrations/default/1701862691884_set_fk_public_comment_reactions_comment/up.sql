alter table "public"."comment_reactions"
  add constraint "comment_reactions_comment_fkey"
  foreign key ("comment")
  references "public"."comments"
  ("id") on update no action on delete no action;
