CREATE OR REPLACE VIEW random_species_assets_view AS
SELECT sa.*
FROM species_assets sa
JOIN (
    SELECT s.id AS species_id
    FROM species s
    ORDER BY random()
    LIMIT 1
) rs ON sa.species_id = rs.species_id
ORDER BY random()
LIMIT 10;
