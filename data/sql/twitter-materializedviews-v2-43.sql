CREATE MATERIALIZED VIEW "public"."me_user"
AS
select * from node WHERE "_labels" in (':Me:User');

CREATE MATERIALIZED VIEW "public"."tweet"
AS
select * from node WHERE "_labels" in (':Tweet');

CREATE MATERIALIZED VIEW "public"."hashtag"
AS
select * from node WHERE "_labels" in (':Hashtag');

CREATE MATERIALIZED VIEW "public"."user"
AS
select * from node WHERE "_labels" in (':User', ':Me:User');

CREATE MATERIALIZED VIEW "public"."node_rel_follows"
AS
select * from node_rel WHERE "_type" in ('FOLLOWS');

CREATE MATERIALIZED VIEW "public"."node_rel_posts"
AS
select * from node_rel WHERE "_type" in ('POSTS');

CREATE MATERIALIZED VIEW "public"."node_rel_retweets"
AS
select * from node_rel WHERE "_type" in ('RETWEETS');

CREATE MATERIALIZED VIEW "public"."node_rel_tags"
AS
select * from node_rel WHERE "_type" in ('TAGS');

CREATE MATERIALIZED VIEW "public"."node_rel_mentions"
AS
select * from node_rel WHERE "_type" in ('MENTIONS');