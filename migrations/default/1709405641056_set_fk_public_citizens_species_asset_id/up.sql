alter table "public"."citizens"
  add constraint "citizens_species_asset_id_fkey"
  foreign key ("species_asset_id")
  references "public"."species_assets"
  ("id") on update restrict on delete restrict;
