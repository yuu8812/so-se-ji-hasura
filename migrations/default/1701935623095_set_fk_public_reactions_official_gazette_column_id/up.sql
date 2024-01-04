alter table "public"."reactions"
  add constraint "reactions_official_gazette_column_id_fkey"
  foreign key ("official_gazette_column_id")
  references "public"."official_gazette_columns"
  ("id") on update no action on delete no action;
