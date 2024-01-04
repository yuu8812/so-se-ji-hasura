alter table "public"."reactions"
  add constraint "reactions_diet_member_id_fkey"
  foreign key ("diet_member_id")
  references "public"."diet_members"
  ("id") on update no action on delete no action;
