alter table "public"."law_revision_columns" drop constraint "law_revision_columns_pkey";
alter table "public"."law_revision_columns"
    add constraint "law_revision_column_pkey"
    primary key ("id", "column_id");
