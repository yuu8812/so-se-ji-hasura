BEGIN TRANSACTION;
ALTER TABLE "public"."world_editable_users" DROP CONSTRAINT "world_editable_users_pkey";

ALTER TABLE "public"."world_editable_users"
    ADD CONSTRAINT "world_editable_users_pkey" PRIMARY KEY ("world_id", "user_id");
COMMIT TRANSACTION;
