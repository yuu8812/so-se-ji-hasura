alter table "public"."reactions"
  add constraint "reactions_law_revision_column_id_fkey"
  foreign key ("law_revision_column_id")
  references "public"."law_revision_column"
  ("id") on update restrict on delete restrict;
