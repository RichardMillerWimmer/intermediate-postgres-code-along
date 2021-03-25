CREATE TABLE movie (
	movie_id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  media_type_id INTEGER REFERENCES media_type(media_type_id)
);

INSERT INTO movie (title, media_type_id)
VALUES ('True Grit', 3);

SELECT * FROM movie;

ALTER TABLE movie
ADD COLUMN genre_id INTEGER REFERENCES genre(genre_id);

UPDATE movie
SET genre_id = 22
Where movie_id = 1;

SELECT * FROM movie;


SELECT album.title, artist.name FROM album
JOIN artist ON album.artist_id = artist.artist_id;


SELECT * FROM track
WHERE genre_id IN (
	SELECT genre_id FROM genre
  WHERE name = 'Jazz' or name = 'Blues'
);

UPDATE employee 
SET phone = null
WHERE employee_id = 1;

SELECT * FROM employee;


SELECT * from customer
WHERE company is null;

SELECT artist.artist_id, artist.name, COUNT(*) FROM artist
JOIN album ON artist.artist_id = album.artist_id
GROUP BY artist.artist_id;

SELECT DISTINCT country FROM customer;

SELECT * FROM customer
WHERE fax is NULL;

DELETE FROM customer 
WHERE fax IS NULL;

SELECT * FROM customer;


