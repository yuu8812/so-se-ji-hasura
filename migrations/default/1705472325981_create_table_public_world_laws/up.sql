CREATE TABLE "public"."world_laws" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "world_id" uuid NOT NULL, "law_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("world_id") REFERENCES "public"."worlds"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("law_id") REFERENCES "public"."laws"("id") ON UPDATE restrict ON DELETE restrict);
CREATE EXTENSION IF NOT EXISTS pgcrypto;
