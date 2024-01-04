alter table "public"."users" drop constraint "users_pkey";
alter table "public"."users"
    add constraint "user_pkey"
    primary key ("authentication_id", "id");
