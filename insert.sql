-- Вставка данных в таблицу Жанров
INSERT INTO Genres (Name) VALUES
('Rock'),
('Pop'),
('Jazz');

-- Вставка данных в таблицу Исполнителей
INSERT INTO Singers (Name) VALUES
('The Beatles'),
('Madonna'),
('Miles Davis'),
('Queen');

-- Вставка данных в таблицу для связи Исполнителей и Жанров
INSERT INTO SingersGenres (SingerID, GenreID) VALUES
(1, 1), -- The Beatles - Rock
(2, 2), -- Madonna - Pop
(3, 3), -- Miles Davis - Jazz
(4, 1); -- Queen - Rock

-- Вставка данных в таблицу Альбомов
INSERT INTO Albums (Title, ReleaseYear) VALUES
('Abbey Road', 1969),
('Like a Virgin', 1984),
('Kind of Blue', 1959);

-- Вставка данных в таблицу для связи Исполнителей и Альбомов
INSERT INTO SingersAlbums (SingerID, AlbumID) VALUES
(1, 1), -- The Beatles - Abbey Road
(2, 2), -- Madonna - Like a Virgin
(3, 3); -- Miles Davis - Kind of Blue

-- Вставка данных в таблицу Треков
INSERT INTO Tracks (Title, Duration, AlbumID) VALUES
('Come Together', '4:20', 1),
('Something', '3:03', 1),
('Like a Virgin', '3:38', 2),
('Material Girl', '4:00', 2),
('So What', '9:22', 3),
('Freddie Freeloader', '9:46', 3),
('In My Life', '2:26', 1);

-- Вставка данных в таблицу Сборников
INSERT INTO Collections (Name, ReleaseYear) VALUES
('Greatest Hits Rock', 1990),
('Best of Pop', 1995),
('Jazz Classics', 2000),
('Ultimate Collection', 2005);

-- Вставка данных в таблицу для связи Сборников и Треков
INSERT INTO CollectionsTracks (CollectionID, TrackID) VALUES
(1, 1), -- 'Greatest Hits Rock' содержит 'Come Together'
(1, 2), -- 'Greatest Hits Rock' содержит 'Something'
(2, 3), -- 'Best of Pop' содержит 'Like a Virgin'
(2, 4), -- 'Best of Pop' содержит 'Material Girl'
(3, 5), -- 'Jazz Classics' содержит 'So What'
(3, 6), -- 'Jazz Classics' содержит 'Freddie Freeloader'
(4, 1), -- 'Ultimate Collection' содержит 'Come Together'
(4, 3); -- 'Ultimate Collection' содержит 'Like a Virgin'

INSERT INTO Collections (Name, ReleaseYear) VALUES
('The best of the rebellious Beatles', 2019);

INSERT INTO CollectionsTracks (CollectionID, TrackID) VALUES
(5, 1), -- 'Greatest Hits Rock' содержит 'Come Together'
(5, 2), -- 'Greatest Hits Rock' содержит 'Something'
(5, 7); 


