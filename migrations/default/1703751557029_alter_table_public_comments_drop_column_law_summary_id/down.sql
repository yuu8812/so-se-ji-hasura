alter table "public"."comments"
  add constraint "comments_law_summary_id_fkey"
  foreign key (law_summary_id)
  references "public"."law_summaries"
  (id) on update no action on delete no action;
alter table "public"."comments" alter column "law_summary_id" drop not null;
alter table "public"."comments" add column "law_summary_id" uuid;
