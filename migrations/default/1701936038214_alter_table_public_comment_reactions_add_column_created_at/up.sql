alter table "public"."comment_reactions" add column "created_at" timestamptz
 null default now();
