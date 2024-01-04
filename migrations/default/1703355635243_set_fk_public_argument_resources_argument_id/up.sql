alter table "public"."argument_resources"
  add constraint "argument_resources_argument_id_fkey"
  foreign key ("argument_id")
  references "public"."arguments"
  ("id") on update no action on delete no action;
