create table if not exists genres (
	id serial primary key,
	name varchar(100) not null unique
);


create table if not exists performers (
	id serial primary key,
	name varchar(100) not null unique
);


create table if not exists genresperformers (
	id serial primary key,
	genre_id integer not null references genres(id),
	performers_id integer not null references performers(id)
);


create table if not exists albums (
	id serial primary key,
	name varchar(100) not null unique,
	year_of_issue integer not null
);


create table if not exists albumsperformers (
	id serial primary key,
	albums_id integer not null references albums(id),
	performers_id integer not null references performers(id)
);


create table if not exists tracks (
	id serial primary key,
	name varchar(100) not null unique,
	duration integer not null,
	albums_id integer references albums(id)
);


create table if not exists collections (
	id serial primary key,
	name varchar(100) not null unique,
	year_of_issue integer not null
);


create table if not exists trackscollections (
	id serial primary key,
	tracks_id integer not null references tracks(id),
	collections_id integer not null references collections(id)
);

