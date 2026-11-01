
-- One post can have multiple tags
-- One tag can be associated with multiple posts

-- advance.posts.id = advance.post_tags.post_id
-- advance.tags.id = advance.post_tags.tag_id

-- Show every posts with it's tags
SELECT advance.posts.title AS post_tilte, advance.tags.name AS tag_name
FROM advance.post_tags
INNER JOIN advance.posts ON advance.posts.id = advance.post_tags.post_id
INNER JOIN advance.tags ON advance.tags.id = advance.post_tags.tag_id
ORDER BY advance.posts.title, advance.tags.name;