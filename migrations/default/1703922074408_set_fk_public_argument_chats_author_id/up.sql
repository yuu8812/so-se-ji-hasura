alter table "public"."argument_chats"
  add constraint "argument_chats_author_id_fkey"
  foreign key ("author_id")
  references "public"."users"
  ("id") on update no action on delete no action;
