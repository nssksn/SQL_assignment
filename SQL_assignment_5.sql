SELECT COUNT(tweets.tweet)
FROM users
INNER JOIN tweets
ON users.id = tweets.user_id
WHERE users.first_name = "Charlie" AND users.last_name = "Brown"
