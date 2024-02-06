alter table "public"."world_laws" drop constraint "world_laws_pkey";
alter table "public"."world_laws"
    add constraint "world_laws_pkey"
    primary key ("id");
