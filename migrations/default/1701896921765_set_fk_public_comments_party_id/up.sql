alter table "public"."comments"
  add constraint "comments_party_id_fkey"
  foreign key ("party_id")
  references "public"."parties"
  ("id") on update no action on delete no action;
