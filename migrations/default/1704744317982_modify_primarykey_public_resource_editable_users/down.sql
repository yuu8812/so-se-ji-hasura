alter table "public"."resource_editable_users" drop constraint "resource_editable_users_pkey";
alter table "public"."resource_editable_users"
    add constraint "resource_editable_users_pkey"
    primary key ("id");
