alter table "public"."law_revisions"
  add constraint "law_revisions_law_status_id_fkey"
  foreign key ("law_status_id")
  references "public"."law_statuses"
  ("id") on update no action on delete no action;
