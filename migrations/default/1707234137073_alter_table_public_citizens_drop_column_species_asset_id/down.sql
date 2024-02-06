alter table "public"."citizens" alter column "species_asset_id" drop not null;
alter table "public"."citizens" add column "species_asset_id" uuid;
