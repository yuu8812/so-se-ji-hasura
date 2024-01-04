alter table "public"."law_revisions"
  add constraint "law_revisions_law_status_fkey"
  foreign key ("law_status")
  references "public"."law_statuses"
  ("status") on update no action on delete no action;
