SELECT users.first_name, users.last_name, COUNT(replys.reply) AS freq
FROM users
LEFT JOIN replys
ON users.id = replys.user_id
GROUP BY users.id
HAVING freq = (SELECT MAX(cnt)
              FROM (SELECT COUNT(replys.reply) AS cnt
                   FROM users
                   LEFT JOIN replys
                   ON users.id = replys.user_id
                   GROUP BY users.id) v);