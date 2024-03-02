-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE OR REPLACE VIEW "public"."species_percentage_view_with_world_id" AS
--  SELECT worlds.id AS world_id,
--     species.name AS species_name,
--     species.auto_incremental_id AS species_auto_incremental_id,
--     (((count(*))::numeric * 100.0) / sum(count(*)) OVER (PARTITION BY worlds.id)) AS percentage
--    FROM ((((worlds
--      JOIN world_citizens ON ((worlds.id = world_citizens.world_id)))
--      JOIN citizens ON ((world_citizens.citizen_id = citizens.id)))
--      JOIN species_assets ON ((citizens.species_asset_id = species_assets.id)))
--      JOIN species ON ((species_assets.species_id = species.id)))
--   GROUP BY worlds.id, species.name, species.auto_incremental_id;
