CREATE TABLE "public"."law_status" ("status_en" text NOT NULL, "status_ja" text NOT NULL, PRIMARY KEY ("status_en") , UNIQUE ("status_en"), UNIQUE ("status_ja"));
