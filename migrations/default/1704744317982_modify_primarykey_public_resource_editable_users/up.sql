BEGIN TRANSACTION;
ALTER TABLE "public"."resource_editable_users" DROP CONSTRAINT "resource_editable_users_pkey";

ALTER TABLE "public"."resource_editable_users"
    ADD CONSTRAINT "resource_editable_users_pkey" PRIMARY KEY ("resource_id", "user_id");
COMMIT TRANSACTION;
