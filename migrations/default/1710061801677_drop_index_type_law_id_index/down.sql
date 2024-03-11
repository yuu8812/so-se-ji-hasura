CREATE  INDEX "type_law_id_index" on
  "public"."law_reactions" using btree ("law_id", "type");
