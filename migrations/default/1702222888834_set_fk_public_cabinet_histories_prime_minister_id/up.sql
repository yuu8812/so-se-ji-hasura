alter table "public"."cabinet_histories"
  add constraint "cabinet_histories_prime_minister_id_fkey"
  foreign key ("prime_minister_id")
  references "public"."prime_minister_histories"
  ("id") on update no action on delete no action;
