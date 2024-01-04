alter table "public"."official_gazette_columns"
  add constraint "official_gazette_columns_official_gazette_id_fkey"
  foreign key ("official_gazette_id")
  references "public"."official_gazettes"
  ("id") on update no action on delete no action;
