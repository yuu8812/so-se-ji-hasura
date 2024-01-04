alter table "public"."reactions"
  add constraint "reactions_argument_chat_id_fkey"
  foreign key ("argument_chat_id")
  references "public"."argument_chats"
  ("id") on update no action on delete no action;
