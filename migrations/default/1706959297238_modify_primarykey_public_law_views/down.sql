alter table "public"."law_views" drop constraint "law_views_pkey";
alter table "public"."law_views"
    add constraint "views_pkey"
    primary key ("id");
