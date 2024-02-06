alter table "public"."law_statuses" drop constraint "law_statuses_pkey";
alter table "public"."law_statuses"
    add constraint "law_status_pkey"
    primary key ("status_ja");
