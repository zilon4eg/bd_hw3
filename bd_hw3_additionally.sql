create table deartment (
	id serial primary key,
	title varchar(40) not null
);


create table employee (
	id serial primary key,
	name varchar(40) not null,
	deartment_id integer not null references deartment(id)
);


create table management (
	id serial primary key,
	employee_id integer not null references employee(id),
	deartment_id integer not null references deartment(id)
);