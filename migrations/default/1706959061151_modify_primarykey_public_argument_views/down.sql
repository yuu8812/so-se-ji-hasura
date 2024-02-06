alter table "public"."argument_views" drop constraint "argument_views_pkey";
alter table "public"."argument_views"
    add constraint "argument_views_pkey"
    primary key ("id");
