alter table "public"."reactions"
  add constraint "reactions_official_gazetta_id_fkey"
  foreign key ("official_gazetta_id")
  references "public"."official_gazettes"
  ("id") on update no action on delete no action;
