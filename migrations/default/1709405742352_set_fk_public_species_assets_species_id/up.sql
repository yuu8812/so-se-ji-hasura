alter table "public"."species_assets"
  add constraint "species_assets_species_id_fkey"
  foreign key ("species_id")
  references "public"."species"
  ("id") on update restrict on delete restrict;
