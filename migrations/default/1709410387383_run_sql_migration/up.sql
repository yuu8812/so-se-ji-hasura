CREATE OR REPLACE VIEW "public"."random_species_assets_view" AS 
 SELECT sa.id,
    sa.personality,
    sa.created_at,
    sa.updated_at,
    sa.species_id,
    sa.image_url
   FROM (species_assets sa
     JOIN ( SELECT s.id AS species_id
           FROM species s
          ORDER BY (random())
         LIMIT 10) rs ON ((sa.species_id = rs.species_id)))
  ORDER BY (random())
 LIMIT 1;
