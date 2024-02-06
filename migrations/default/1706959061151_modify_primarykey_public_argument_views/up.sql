BEGIN TRANSACTION;
ALTER TABLE "public"."argument_views" DROP CONSTRAINT "argument_views_pkey";

ALTER TABLE "public"."argument_views"
    ADD CONSTRAINT "argument_views_pkey" PRIMARY KEY ("argument_id", "user_id");
COMMIT TRANSACTION;
