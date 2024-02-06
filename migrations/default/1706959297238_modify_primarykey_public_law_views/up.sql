BEGIN TRANSACTION;
ALTER TABLE "public"."law_views" DROP CONSTRAINT "views_pkey";

ALTER TABLE "public"."law_views"
    ADD CONSTRAINT "views_pkey" PRIMARY KEY ("user_id", "law_id");
COMMIT TRANSACTION;
