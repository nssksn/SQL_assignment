SELECT tweets.tweet, replys.reply
FROM tweets 
LEFT JOIN replys
ON tweets.id = replys.tweet_id