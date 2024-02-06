BEGIN TRANSACTION;
ALTER TABLE "public"."law_revision_columns" DROP CONSTRAINT "law_revision_column_pkey";

ALTER TABLE "public"."law_revision_columns"
    ADD CONSTRAINT "law_revision_column_pkey" PRIMARY KEY ("id", "column_id");
COMMIT TRANSACTION;
