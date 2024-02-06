BEGIN TRANSACTION;
ALTER TABLE "public"."world_arguments" DROP CONSTRAINT "world_arguments_pkey";

ALTER TABLE "public"."world_arguments"
    ADD CONSTRAINT "world_arguments_pkey" PRIMARY KEY ("world_id", "argument_id");
COMMIT TRANSACTION;
