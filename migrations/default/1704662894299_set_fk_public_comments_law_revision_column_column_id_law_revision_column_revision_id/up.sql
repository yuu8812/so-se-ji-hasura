alter table "public"."comments"
  add constraint "comments_law_revision_column_column_id_law_revision_column_r"
  foreign key ("law_revision_column_column_id", "law_revision_column_revision_id")
  references "public"."law_revision_columns"
  ("column_id", "law_revision_id") on update restrict on delete restrict;
