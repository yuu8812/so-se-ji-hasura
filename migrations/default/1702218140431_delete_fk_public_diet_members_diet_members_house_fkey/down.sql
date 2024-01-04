alter table "public"."diet_members"
  add constraint "diet_members_house_fkey"
  foreign key ("house")
  references "public"."house_types"
  ("house_type") on update no action on delete no action;
