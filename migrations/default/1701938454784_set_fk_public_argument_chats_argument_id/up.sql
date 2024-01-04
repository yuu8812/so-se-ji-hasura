alter table "public"."argument_chats"
  add constraint "argument_chats_argument_id_fkey"
  foreign key ("argument_id")
  references "public"."arguments"
  ("id") on update no action on delete no action;
