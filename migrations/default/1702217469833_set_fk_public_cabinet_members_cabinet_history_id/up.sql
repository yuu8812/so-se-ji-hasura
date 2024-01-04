alter table "public"."cabinet_members"
  add constraint "cabinet_members_cabinet_history_id_fkey"
  foreign key ("cabinet_history_id")
  references "public"."cabinet_histories"
  ("id") on update no action on delete no action;
