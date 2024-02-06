alter table "public"."reactions"
  add constraint "reactions_law_revision_column_column_id_law_revision_column_"
  foreign key ("law_revision_column_id", "law_revision_column_column_id")
  references "public"."law_revision_columns"
  ("id", "column_id") on update restrict on delete restrict;
