alter table "public"."law_revisions" drop constraint "law_revisions_category_fkey",
  add constraint "law_revisions_category_fkey"
  foreign key ("category")
  references "public"."law_categories"
  ("category_name") on update no action on delete no action;
