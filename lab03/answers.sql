-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name FROM users;



-- Exercise 3
SELECT id, first_name, last_name FROM users ORDER BY last_name;




-- Exercise 4
SELECT id, image_url, user_id FROM posts WHERE user_id=26;




-- Exercise 5
SELECT id, image_url, user_id FROM posts WHERE user_id=26 OR user_id=12;




-- Exercise 6
SELECT COUNT(id) FROM posts;




-- Exercise 7
SELECT user_id, COUNT(user_id) FROM comments GROUP BY user_id ORDER BY count DESC;




-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name FROM posts JOIN users ON posts.user_id=users.id WHERE user_id=26 OR user_id=12;




-- Exercise 9
SELECT posts.id, posts.pub_date, following.following_id FROM posts JOIN following ON posts.user_id=following.following_id WHERE following.user_
id=26;





-- Exercise 10
SELECT posts.id, posts.pub_date, following.following_id, users.username FROM posts JOIN following ON posts.user_id=following.following_id JOIN
users ON users.id=posts.user_id WHERE following.user_id=26 ORDER BY pub_date DESC;







-- Exercise 11
INSERT INTO bookmarks (user_id, post_id, timestamp) VALUES (26, 219, now());
INSERT INTO bookmarks (user_id, post_id, timestamp) VALUES (26, 220, now());
INSERT INTO bookmarks (user_id, post_id, timestamp) VALUES (26, 221, now());




-- Exercise 12
DELETE FROM bookmarks WHERE user_id=26 AND post_id=219;
DELETE FROM bookmarks WHERE user_id=26 AND post_id=220;
DELETE FROM bookmarks WHERE user_id=26 AND post_id=221;





-- Exercise 13
UPDATE users SET email='knick2022@gmail.com' WHERE id=26;




-- Exercise 14
SELECT posts.id, posts.user_id, COUNT(*), posts.caption FROM posts JOIN comments ON posts.user_id=comments.user_id WHERE users.user_id=26 GROUP BY id;
