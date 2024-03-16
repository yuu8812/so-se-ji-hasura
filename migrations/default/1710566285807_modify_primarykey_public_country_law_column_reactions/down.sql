alter table "public"."country_law_column_reactions" drop constraint "country_law_column_reactions_pkey";
alter table "public"."country_law_column_reactions"
    add constraint "country_law_column_reactions_pkey"
    primary key ("type", "user_id");
