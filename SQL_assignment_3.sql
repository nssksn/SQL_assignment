SELECT users.first_name, users.last_name, replys.reply
FROM users
INNER JOIN replys
ON users.id = replys.user_id
WHERE users.first_name = "Jane" AND users.last_name = "Smith"