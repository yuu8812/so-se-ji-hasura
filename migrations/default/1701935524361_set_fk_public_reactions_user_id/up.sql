alter table "public"."reactions"
  add constraint "reactions_user_id_fkey"
  foreign key ("user_id")
  references "public"."users"
  ("id") on update no action on delete no action;
