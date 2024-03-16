BEGIN TRANSACTION;
ALTER TABLE "public"."law_column" DROP CONSTRAINT "law_column_pkey";

ALTER TABLE "public"."law_column"
    ADD CONSTRAINT "law_column_pkey" PRIMARY KEY ("refer_user_law_column_id", "law_revision_id", "refer_country__law_column_id");
COMMIT TRANSACTION;
