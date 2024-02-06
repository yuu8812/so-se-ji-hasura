alter table "public"."comments" add constraint "a" check (CHECK (status < 10));
