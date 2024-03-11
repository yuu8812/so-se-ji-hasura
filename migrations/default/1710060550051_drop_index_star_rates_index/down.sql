CREATE  INDEX "star_rates_index" on
  "public"."law_star_rates" using hash ("law_id");
