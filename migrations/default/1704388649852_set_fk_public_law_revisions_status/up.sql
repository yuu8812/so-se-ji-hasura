alter table "public"."law_revisions"
  add constraint "law_revisions_status_fkey"
  foreign key ("status")
  references "public"."law_statuses"
  ("status_en") on update restrict on delete restrict;