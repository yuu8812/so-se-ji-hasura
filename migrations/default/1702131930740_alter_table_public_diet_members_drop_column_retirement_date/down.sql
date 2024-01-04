alter table "public"."diet_members" alter column "retirement_date" drop not null;
alter table "public"."diet_members" add column "retirement_date" timetz;
