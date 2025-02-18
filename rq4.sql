SELECT album_name, A.user_nom as "a partagé", group_concat(users.user_nom) as avec
FROM albums
INNER JOIN users as A ON albums.user_id = A.user_id
INNER JOIN sharing as B ON albums.album_id = B.album_id
INNER JOIN users ON B.user_id = users.user_id 
GROUP BY album_name, A.user_nom 