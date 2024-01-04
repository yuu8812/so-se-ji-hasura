alter table "public"."law_revisions"
  add constraint "law_revisions_type_fkey"
  foreign key ("type")
  references "public"."law_types"
  ("type_name") on update no action on delete no action;
