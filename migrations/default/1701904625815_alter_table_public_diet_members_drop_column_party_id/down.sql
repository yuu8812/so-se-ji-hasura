alter table "public"."diet_members" alter column "party_id" drop not null;
alter table "public"."diet_members" add column "party_id" uuid;
