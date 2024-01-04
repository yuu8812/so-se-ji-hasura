alter table "public"."parties"
  add constraint "parties_diet_member_fkey"
  foreign key ("diet_member")
  references "public"."diet_members"
  ("id") on update no action on delete no action;
