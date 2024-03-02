CREATE OR REPLACE VIEW random_species_assets_view AS
SELECT
    s.id AS species_id,
    sa.id AS species_asset_id
FROM
    (
        SELECT id
        FROM species
        ORDER BY random()
        LIMIT 10
    ) s_random
JOIN species s ON s.id = s_random.id
LEFT JOIN LATERAL (
    SELECT sa.id
    FROM species_assets sa
    WHERE sa.species_id = s.id
    ORDER BY random()
    LIMIT 1
) sa ON true;
