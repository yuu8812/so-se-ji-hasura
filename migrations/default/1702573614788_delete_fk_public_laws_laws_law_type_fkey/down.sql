alter table "public"."laws"
  add constraint "laws_law_type_fkey"
  foreign key ("law_type")
  references "public"."law_types"
  ("type") on update no action on delete no action;
