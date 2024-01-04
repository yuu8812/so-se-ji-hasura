alter table "public"."comments"
  add constraint "comments_argument_chat_id_fkey"
  foreign key ("argument_chat_id")
  references "public"."argument_chats"
  ("id") on update no action on delete no action;
