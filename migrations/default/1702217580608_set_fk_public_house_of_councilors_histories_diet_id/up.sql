alter table "public"."house_of_councilors_histories"
  add constraint "house_of_councilors_histories_diet_id_fkey"
  foreign key ("diet_id")
  references "public"."diet"
  ("id") on update no action on delete no action;
