alter table "public"."law_categories" drop constraint "law_categories_pkey";
alter table "public"."law_categories"
    add constraint "law_categories_pkey"
    primary key ("category_ja");
