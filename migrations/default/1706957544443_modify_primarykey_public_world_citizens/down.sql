alter table "public"."world_citizens" drop constraint "world_citizens_pkey";
alter table "public"."world_citizens"
    add constraint "world_citizenes_pkey"
    primary key ("citizen_id", "id", "world_id");
