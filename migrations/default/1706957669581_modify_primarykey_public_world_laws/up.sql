BEGIN TRANSACTION;
ALTER TABLE "public"."world_laws" DROP CONSTRAINT "world_laws_pkey";

ALTER TABLE "public"."world_laws"
    ADD CONSTRAINT "world_laws_pkey" PRIMARY KEY ("world_id", "law_id");
COMMIT TRANSACTION;
