alter table "public"."world_arguments" drop constraint "world_arguments_pkey";
alter table "public"."world_arguments"
    add constraint "world_arguments_pkey"
    primary key ("id");
