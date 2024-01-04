alter table "public"."law_revision_columns"
  add constraint "law_revision_columns_law_revision_fkey"
  foreign key ("law_revision")
  references "public"."law_revisions"
  ("id") on update no action on delete no action;
