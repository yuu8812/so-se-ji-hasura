alter table "public"."a" drop constraint "a_pkey";
alter table "public"."a"
    add constraint "a_pkey"
    primary key ("b", "a");
