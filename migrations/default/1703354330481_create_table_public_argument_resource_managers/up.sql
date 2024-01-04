CREATE TABLE "public"."argument_resource_managers" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "argument_resource_id" UUID NOT NULL, "user_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("argument_resource_id") REFERENCES "public"."argument_resources"("id") ON UPDATE no action ON DELETE no action, FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON UPDATE no action ON DELETE no action);
CREATE EXTENSION IF NOT EXISTS pgcrypto;
