alter table "public"."country_law_column" alter column "id" set default gen_random_uuid();
alter table "public"."country_law_column" add constraint "country_law_column_id_key" unique (id);
alter table "public"."country_law_column"
  add constraint "country_law_column_reactions_column_id_fkey"
  foreign key (column_id)
  references "public"."country_law_column"
  (id) on update restrict on delete restrict;
alter table "public"."country_law_column" alter column "id" drop not null;
alter table "public"."country_law_column" add column "id" uuid;
