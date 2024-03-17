alter table "public"."law_star_rates" drop constraint "law_star_rates_pkey";
alter table "public"."law_star_rates"
    add constraint "law_star_rates_pkey"
    primary key ("user_id", "rate", "law_id");
