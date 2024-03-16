alter table "public"."country_law_column_reactions"
  add constraint "country_law_column_reactions_column_id_law_revision_id_fkey"
  foreign key ("column_id", "law_revision_id")
  references "public"."country_law_column"
  ("column_id", "law_revision_id") on update restrict on delete restrict;
