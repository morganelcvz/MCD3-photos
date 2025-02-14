SELECT user_nom, COUNT(*) as totalalbum FROM albums
LEFT JOIN users ON albums.user_id = users.user_id
GROUP BY user_nom

