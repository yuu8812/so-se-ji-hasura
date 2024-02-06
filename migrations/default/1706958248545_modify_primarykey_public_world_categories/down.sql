alter table "public"."world_categories" drop constraint "world_categories_pkey";
alter table "public"."world_categories"
    add constraint "world_categories_pkey"
    primary key ("id");
