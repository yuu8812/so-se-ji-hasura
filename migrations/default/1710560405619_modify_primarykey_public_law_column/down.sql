alter table "public"."law_column" drop constraint "law_column_pkey";
alter table "public"."law_column"
    add constraint "law_column_pkey"
    primary key ("refer_user_law_column_id", "id", "law_revision_id", "refer_country__law_column_id");
