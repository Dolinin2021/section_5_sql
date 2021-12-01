INSERT INTO genres(name)
VALUES
	('Поп-музыка'), 
	('Рок'), 
	('Хип-Хоп/Рэп'), 
	('Dance/Electronic/House'), 
	('Авторская музыка(барды)');


INSERT INTO performers(name)
VALUES	
	('BTS'),
	('Blackpink'),
	('Green Day'),
	('Hollywood Undead'),
	('Sheff G'),
	('Melii'),
	('Knife Party'),
	('Азанов Евгений Васильевич');


INSERT INTO genresperformers(genre_id, performers_id)
VALUES	
	(7, 1),
	(7, 2),
	(8, 3),
	(8, 4),
	(9, 4),
	(9, 5),
	(9, 6),
	(10, 6),
	(10, 7),
	(11, 8);
	

INSERT INTO albums(name, year_of_issue)
VALUES	
	('Love Yourself: Tear', 2018),
	('Map of the Soul: 7', 2020),
	('Square Up', 2018),
	('The Album', 2020),
	('Warning:', 2000),
	('Psalms', 2018),
	('One and Only', 2020),
	('Motions', 2019),
	('Full Hearts', 2018);
	

INSERT INTO albumsperformers(albums_id, performers_id)
VALUES	
	(1, 1),
	(2, 1),
	(3, 2),
	(4, 2),
	(5, 3),
	(6, 4),
	(7, 5),
	(8, 6),
	(9, 7);
	

INSERT INTO tracks(name, duration, albums_id)
VALUES	
	('Fake Love', 248, 1),
	('My unhappy love', 128, 1),
	('The Truth Untold', 248, 1),
	('INTRO: Calling', 85, 2),
	('Stay Gold', 243, 2),
	('FOREVER YOUNG', 237, 3),
	('REALLY', 198, 3),
	('My star', 85, 3),
	('How You Like That', 181, 4),
	('Ice Cream', 176, 4),
	('Warning', 223, 5),
	('Misery', 306, 5),
	('Bloody Nose', 251, 6),
	('Something to Believe', 202, 6),
	('Moody', 103, 7),
	('Note to Self', 123, 7),
	('Harpoon', 352, 8),
	('Steel', 259, 8);
	

INSERT INTO collections(name, year_of_issue)
VALUES	
	('BE', 2020),
	('Face Yourself', 2018),
	('Kill This Love', 2019),
	('Blackpink', 2017),
	('21st Century Breakdown', 2009),
	('The Simpsons Theme', 2007),
	('Desperate Measures', 2009),
	('American Tragedy Redux', 2011),
	('Paramore', 2018),
	('Mutchel', 2019),
	('UKF Life', 2013),
	('DFM Dance, Vol. 07', 2015);


INSERT INTO trackscollections(tracks_id, collections_id)
VALUES	
	(17, 3),
	(18, 3),
	(19, 1),
	(20, 1),
	(21, 2),
	(22, 4),
	(23, 5),
	(24, 6),
	(25, 7),
	(26, 8),
	(27, 9),
	(28, 10),
	(29, 10),
	(30, 11),
	(31, 11);
	
