alter table "public"."maintenances" alter column "is_maintain" set default false;
alter table "public"."maintenances" alter column "is_maintain" drop not null;
alter table "public"."maintenances" add column "is_maintain" bool;
