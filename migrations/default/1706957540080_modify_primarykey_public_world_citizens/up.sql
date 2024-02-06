BEGIN TRANSACTION;
ALTER TABLE "public"."world_citizens" DROP CONSTRAINT "world_citizenes_pkey";

ALTER TABLE "public"."world_citizens"
    ADD CONSTRAINT "world_citizenes_pkey" PRIMARY KEY ("id", "world_id", "citizen_id");
COMMIT TRANSACTION;
