create table genre (
	id serial primary key,
	title varchar(40) not null unique
);


create table executor (
	id serial primary key,
	name varchar(50) not null,
	nickname varchar(30)
);


create table executor_genre (
	executor_id integer not null references executor(id),
	genre_id integer not null references genre(id),
	constraint pk_executor_genre primary key (executor_id, genre_id)
);


create table album (
	id serial primary key,
	title varchar(40) not null,
	year integer
);


create table executor_album (
	executor_id integer not null references executor(id),
	album_id integer not null references album(id),
	constraint pk_executor_album primary key (executor_id, album_id)
);


create table track (
	id serial primary key,
	title varchar(40) not null,
	duration integer,
	album_id integer not null references album(id)
);


create table collection (
	id serial primary key,
	title varchar(40) not null,
	year integer
);


create table track_collection (
	track_id integer not null references track(id),
	collection_id integer not null references collection(id),
	constraint pk_track_collection primary key (track_id, collection_id)
);