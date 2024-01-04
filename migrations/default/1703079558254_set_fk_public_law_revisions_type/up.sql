alter table "public"."law_revisions" drop constraint "law_revisions_type_fkey",
  add constraint "law_revisions_type_fkey"
  foreign key ("type")
  references "public"."law_types"
  ("type") on update no action on delete no action;
