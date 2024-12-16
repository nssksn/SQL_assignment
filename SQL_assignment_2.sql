SELECT users.first_name, users.last_name, tweets.tweet
FROM users
INNER JOIN tweets
ON users.id = tweets.user_id
WHERE users.first_name = "John" AND users.last_name = "Doe"