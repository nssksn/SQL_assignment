SELECT users.first_name, users.last_name
FROM users
LEFT JOIN replys
ON users.id = replys.user_id
WHERE replys.reply IS NULL;