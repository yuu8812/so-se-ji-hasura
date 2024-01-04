alter table "public"."comments"
  add constraint "comments_law_revision_column_id_fkey"
  foreign key ("law_revision_column_id")
  references "public"."law_revision_columns"
  ("id") on update no action on delete no action;
