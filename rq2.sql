SELECT user_id, album_id, album_name, group_concat(photo_name separator ", ") as photos FROM albums 
NATURAL JOIN add_photos
GROUP BY album_name, user_id, album_id