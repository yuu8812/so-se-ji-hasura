alter table "public"."comment_reactions"
  add constraint "comment_reactions_user_id_fkey"
  foreign key ("user_id")
  references "public"."users"
  ("id") on update restrict on delete restrict;
