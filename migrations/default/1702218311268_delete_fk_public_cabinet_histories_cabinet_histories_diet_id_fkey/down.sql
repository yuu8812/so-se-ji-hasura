alter table "public"."cabinet_histories"
  add constraint "cabinet_histories_diet_id_fkey"
  foreign key ("diet_id")
  references "public"."diet"
  ("id") on update no action on delete no action;
