SELECT albums.album_name, albums.user_id as envoyé, sharing.user_id as reçu FROM albums
INNER JOIN sharing ON albums.user_id = sharing.user_id
