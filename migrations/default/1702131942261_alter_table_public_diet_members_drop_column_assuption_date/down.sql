alter table "public"."diet_members" alter column "assuption_date" drop not null;
alter table "public"."diet_members" add column "assuption_date" timetz;
