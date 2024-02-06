alter table "public"."reactions"
  add constraint "reactions_law_summary_id_fkey"
  foreign key ("law_summary_id")
  references "public"."law_summaries"
  ("id") on update restrict on delete restrict;
