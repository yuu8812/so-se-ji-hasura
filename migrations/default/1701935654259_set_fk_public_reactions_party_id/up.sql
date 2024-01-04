alter table "public"."reactions"
  add constraint "reactions_party_id_fkey"
  foreign key ("party_id")
  references "public"."parties"
  ("id") on update no action on delete no action;
