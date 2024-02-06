BEGIN TRANSACTION;
ALTER TABLE "public"."world_categories" DROP CONSTRAINT "world_categories_pkey";

ALTER TABLE "public"."world_categories"
    ADD CONSTRAINT "world_categories_pkey" PRIMARY KEY ("world_id", "law_category_ja");
COMMIT TRANSACTION;
