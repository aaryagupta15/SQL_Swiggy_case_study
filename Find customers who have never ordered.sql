SELECT users.name, users.email
FROM users
LEFT JOIN orders ON users.user_id = orders.user_id
WHERE orders.user_id IS NULL;