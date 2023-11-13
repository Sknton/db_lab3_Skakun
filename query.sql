-- Вивести кількість всіх пісень по виконавцям
SELECT artist.pseudonym, COUNT(song.song_id) AS song_count
FROM artist
LEFT JOIN artist_song ON artist.artist_id = artist_song.artist_id
LEFT JOIN song ON artist_song.song_id = song.song_id
GROUP BY artist.pseudonym;



-- Вивести кількість альбомів для кожного виконавця
SELECT artist.pseudonym AS artist_name, COUNT(album.album_id) AS album_count
FROM artist
LEFT JOIN album ON artist.artist_id = album.artist_id
GROUP BY artist.pseudonym;



-- Вивести кількість пісень в кожному році
SELECT EXTRACT(YEAR FROM song.date) AS year, COUNT(*) AS song_count
FROM song
GROUP BY EXTRACT(YEAR FROM song.date)
ORDER BY year;




