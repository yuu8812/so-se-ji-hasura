alter table "public"."law_revisions"
  add constraint "law_revisions_laws_fkey"
  foreign key ("laws")
  references "public"."laws"
  ("id") on update no action on delete no action;
