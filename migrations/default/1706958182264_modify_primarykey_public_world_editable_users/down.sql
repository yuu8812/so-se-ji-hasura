alter table "public"."world_editable_users" drop constraint "world_editable_users_pkey";
alter table "public"."world_editable_users"
    add constraint "world_editable_users_pkey"
    primary key ("id");
