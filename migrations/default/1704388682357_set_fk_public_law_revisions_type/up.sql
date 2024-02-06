alter table "public"."law_revisions"
  add constraint "law_revisions_type_fkey"
  foreign key ("type")
  references "public"."law_types"
  ("type_en") on update restrict on delete restrict;
