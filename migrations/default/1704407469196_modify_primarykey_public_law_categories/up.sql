BEGIN TRANSACTION;
ALTER TABLE "public"."law_categories" DROP CONSTRAINT "law_categories_pkey";

ALTER TABLE "public"."law_categories"
    ADD CONSTRAINT "law_categories_pkey" PRIMARY KEY ("category_number");
COMMIT TRANSACTION;
