alter table "public"."comments"
  add constraint "comments_law_summary_id_fkey"
  foreign key ("law_summary_id")
  references "public"."law_summaries"
  ("id") on update no action on delete no action;
