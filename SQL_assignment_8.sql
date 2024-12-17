SELECT users.first_name, users.last_name, COUNT(tweets.tweet), COUNT(replys.reply)
FROM users
LEFT JOIN tweets
ON users.id = tweets.user_id
LEFT JOIN replys
ON users.id = replys.user_id
GROUP BY users.id
