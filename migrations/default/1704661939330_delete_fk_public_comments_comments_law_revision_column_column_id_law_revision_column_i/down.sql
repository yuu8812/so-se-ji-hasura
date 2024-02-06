alter table "public"."comments"
  add constraint "comments_law_revision_column_column_id_law_revision_column_i"
  foreign key ("law_revision_column_column_id", "law_revision_column_id")
  references "public"."law_revision_columns"
  ("column_id", "id") on update restrict on delete restrict;
