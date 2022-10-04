insert into genre(name)
values
('Джаз'),
('Шансон'),
('Электронная музыка'),
('Рок'),
('Поп-музыка');

insert into Singer(name)
values
('Louis Armstrong'),
('Me'),
('The Cinematic Orchestra'),
('Стас Михайлов'),
('Михаил Круг'),
('Justice'),
('Red Hot Chili Peppers'),
('Black Eyed Peas'),
('Michael Jackson');

insert into GenreSinger(genre_id, singer_id)
values
((SELECT id FROM genre WHERE name='Джаз'), (SELECT id FROM singer WHERE name='Louis Armstrong')),
((SELECT id FROM genre WHERE name='Джаз'), (SELECT id FROM singer WHERE name='The Cinematic Orchestra')),
((SELECT id FROM genre WHERE name='Джаз'), (SELECT id FROM singer WHERE name='Me')),
((SELECT id FROM genre WHERE name='Шансон'), (SELECT id FROM singer WHERE name='Стас Михайлов')),
((SELECT id FROM genre WHERE name='Шансон'), (SELECT id FROM singer WHERE name='Михаил Круг')),
((SELECT id FROM genre WHERE name='Электронная музыка'), (SELECT id FROM singer WHERE name='Justice')),
((SELECT id FROM genre WHERE name='Рок'), (SELECT id FROM singer WHERE name='Red Hot Chili Peppers')),
((SELECT id FROM genre WHERE name='Поп-музыка'), (SELECT id FROM singer WHERE name='Black Eyed Peas')),
((SELECT id FROM genre WHERE name='Поп-музыка'), (SELECT id FROM singer WHERE name='Michael Jackson'));

insert into Album(name, release_date)
values
('My album', '2018-08-15'),
('What A Wonderful World', '1967-08-15'),
('To Believe', '2019-03-15'),
('Берега мечты', '2006-01-01'),
('Роза', '1999-05-01'),
('A Cross The Universe', '2008-12-09'),
('I am with You', '2011-08-23'),
('Pump It', '2006-01-17'),
('Bad', '1987-08-31');

insert into SingerAlbum(album_id, singer_id)
values
((SELECT id FROM Album WHERE name='My album'), (SELECT id FROM Singer WHERE name='Me')),
((SELECT id FROM Album WHERE name='What A Wonderful World'), (SELECT id FROM Singer WHERE name='Louis Armstrong')),
((SELECT id FROM Album WHERE name='To Believe'), (SELECT id FROM Singer WHERE name='The Cinematic Orchestra')),
((SELECT id FROM Album WHERE name='Берега мечты'), (SELECT id FROM Singer WHERE name='Стас Михайлов')),
((SELECT id FROM Album WHERE name='Роза'), (SELECT id FROM Singer WHERE name='Михаил Круг')),
((SELECT id FROM Album WHERE name='A Cross The Universe'), (SELECT id FROM Singer WHERE name='Justice')),
((SELECT id FROM Album WHERE name='I am with You'), (SELECT id FROM Singer WHERE name='Red Hot Chili Peppers')),
((SELECT id FROM Album WHERE name='Pump It'), (SELECT id FROM Singer WHERE name='Black Eyed Peas')),
((SELECT id FROM Album WHERE name='Bad'), (SELECT id FROM Singer WHERE name='Michael Jackson'));

insert into Track(name, album_id, lenght_seconds)
values
('My track', (SELECT id FROM Album WHERE name='My album'), 600),
('What a Wonderful World', (SELECT id FROM Album WHERE name='What A Wonderful World'), 141),
('Cabaret', (SELECT id FROM Album WHERE name='What A Wonderful World'), 166),
('Lessons', (SELECT id FROM Album WHERE name='To Believe'), 549),
('The Workers of Art', (SELECT id FROM Album WHERE name='To Believe'), 379),
('Всё для тебя', (SELECT id FROM Album WHERE name='Берега мечты'), 240),
('Дайте мне...', (SELECT id FROM Album WHERE name='Берега мечты'), 262),
('Чай с баранками', (SELECT id FROM Album WHERE name='Роза'), 312),
('Ярославская', (SELECT id FROM Album WHERE name='Роза'), 147),
('D.A.N.C.E.', (SELECT id FROM Album WHERE name='A Cross The Universe'), 242),
('Genesis', (SELECT id FROM Album WHERE name='A Cross The Universe'), 234),
('Monarchy of Roses', (SELECT id FROM Album WHERE name='I am with You'), 254),
('The Adventures of Rain Dance Maggie', (SELECT id FROM Album WHERE name='I am with You'), 282),
('Pump It', (SELECT id FROM Album WHERE name='Pump It'), 226),
('Pump It Travis Barker Remix Version', (SELECT id FROM Album WHERE name='Pump It'), 215),
('Liberian Girl', (SELECT id FROM Album WHERE name='Bad'), 232),
('Man in the Mirror', (SELECT id FROM Album WHERE name='Bad'), 303);

insert into Compilation(name, release_date)
values
('Имя сборника-1', '2008-03-02'),
('Имя сборника-2', '2008-03-03'),
('Имя сборника-3', '2009-11-02'),
('Имя сборника-4', '2007-01-22'),
('Имя сборника-5', '2018-04-10'),
('Имя сборника-6', '2020-10-10'),
('Имя сборника-7', '2019-12-31'),
('Имя сборника-8', '2012-07-19');

insert into TrackCompilation(track_id, compilation_id)
values
((SELECT id FROM Track WHERE name='My track'), (SELECT id FROM Compilation  WHERE name='Имя сборника-1')),
((SELECT id FROM Track WHERE name='What a Wonderful World'), (SELECT id FROM Compilation  WHERE name='Имя сборника-1')),
((SELECT id FROM Track WHERE name='Pump It'), (SELECT id FROM Compilation  WHERE name='Имя сборника-1')),
((SELECT id FROM Track WHERE name='Cabaret'), (SELECT id FROM Compilation  WHERE name='Имя сборника-2')),
((SELECT id FROM Track WHERE name='Pump It Travis Barker Remix Version'), (SELECT id FROM Compilation  WHERE name='Имя сборника-2')),
((SELECT id FROM Track WHERE name='Всё для тебя'), (SELECT id FROM Compilation  WHERE name='Имя сборника-3')),
((SELECT id FROM Track WHERE name='Liberian Girl'), (SELECT id FROM Compilation  WHERE name='Имя сборника-3')),
((SELECT id FROM Track WHERE name='Genesis'), (SELECT id FROM Compilation  WHERE name='Имя сборника-3')),
((SELECT id FROM Track WHERE name='Дайте мне...'), (SELECT id FROM Compilation  WHERE name='Имя сборника-4')),
((SELECT id FROM Track WHERE name='Чай с баранками'), (SELECT id FROM Compilation  WHERE name='Имя сборника-4')),
((SELECT id FROM Track WHERE name='What a Wonderful World'), (SELECT id FROM Compilation  WHERE name='Имя сборника-4')),
((SELECT id FROM Track WHERE name='D.A.N.C.E.'), (SELECT id FROM Compilation  WHERE name='Имя сборника-5')),
((SELECT id FROM Track WHERE name='Ярославская'), (SELECT id FROM Compilation  WHERE name='Имя сборника-5')),
((SELECT id FROM Track WHERE name='Genesis'), (SELECT id FROM Compilation  WHERE name='Имя сборника-6')),
((SELECT id FROM Track WHERE name='The Workers of Art'), (SELECT id FROM Compilation  WHERE name='Имя сборника-6')),
((SELECT id FROM Track WHERE name='Monarchy of Roses'), (SELECT id FROM Compilation  WHERE name='Имя сборника-7')),
((SELECT id FROM Track WHERE name='Lessons'), (SELECT id FROM Compilation  WHERE name='Имя сборника-7')),
((SELECT id FROM Track WHERE name='The Adventures of Rain Dance Maggie'), (SELECT id FROM Compilation  WHERE name='Имя сборника-8')),
((SELECT id FROM Track WHERE name='Man in the Mirror'), (SELECT id FROM Compilation  WHERE name='Имя сборника-8'));
