alter table "public"."law_revision_columns"
  add constraint "law_revision_columns_law_revision_id_fkey"
  foreign key ("law_revision_id")
  references "public"."law_revisions"
  ("id") on update restrict on delete restrict;
