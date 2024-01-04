CREATE TABLE "public"."house_of_representatives_histories" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
