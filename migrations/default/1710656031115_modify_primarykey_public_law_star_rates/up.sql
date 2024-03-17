BEGIN TRANSACTION;
ALTER TABLE "public"."law_star_rates" DROP CONSTRAINT "law_star_rates_pkey";

ALTER TABLE "public"."law_star_rates"
    ADD CONSTRAINT "law_star_rates_pkey" PRIMARY KEY ("user_id", "law_id");
COMMIT TRANSACTION;
