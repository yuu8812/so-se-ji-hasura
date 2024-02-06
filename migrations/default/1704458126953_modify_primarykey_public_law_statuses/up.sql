BEGIN TRANSACTION;
ALTER TABLE "public"."law_statuses" DROP CONSTRAINT "law_status_pkey";

ALTER TABLE "public"."law_statuses"
    ADD CONSTRAINT "law_status_pkey" PRIMARY KEY ("status_ja");
COMMIT TRANSACTION;
