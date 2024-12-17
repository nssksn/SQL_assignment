SELECT tweet_id, COUNT(*) AS freq
FROM replys
GROUP BY tweet_id
HAVING COUNT(*) = (SELECT MAX(cnt)
                  FROM (SELECT COUNT(*) AS cnt
                       FROM replys
                       GROUP BY tweet_id) v);