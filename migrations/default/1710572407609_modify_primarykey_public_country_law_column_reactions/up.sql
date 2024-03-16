BEGIN TRANSACTION;
ALTER TABLE "public"."country_law_column_reactions" DROP CONSTRAINT "country_law_column_reactions_pkey";

ALTER TABLE "public"."country_law_column_reactions"
    ADD CONSTRAINT "country_law_column_reactions_pkey" PRIMARY KEY ("type", "user_id", "column_id", "law_revision_id");
COMMIT TRANSACTION;
