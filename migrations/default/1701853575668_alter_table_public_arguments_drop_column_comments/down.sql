alter table "public"."arguments"
  add constraint "arguments_comments_fkey"
  foreign key (comments)
  references "public"."comments"
  (id) on update restrict on delete restrict;
alter table "public"."arguments" alter column "comments" drop not null;
alter table "public"."arguments" add column "comments" uuid;
