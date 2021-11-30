create table estados(
	id int not null auto_increment primary key,
	nome varchar(255) not null
);

create table cidades(
	id int not null auto_increment primary key,
	nome varchar(255) not null,
	estado_id int default 0 not null,
	FOREIGN KEY (estado_id) REFERENCES estados(id)
);

create table etnias(
	id int not null auto_increment primary key,
	nome varchar(255) not null
);

create table redes(
	id int not null auto_increment primary key,
	nome varchar(255) not null
);

create table rendas(
	id int not null auto_increment primary key,
	faixa varchar(255) not null
);

create table matriculas(
	id int not null auto_increment primary key,
	situacao varchar(255) not null
);

create table generos(
	id int not null auto_increment primary key,
	nome varchar(2) not null
);

create table alunos(
	id int not null auto_increment primary key,
	cpf varchar(14) not null unique,
	idade int default 0,
	data_nascimento date,
	genero_id int default 0 not null,
	cidade_id int default 0 not null,
	estado_id int default 0 not null,
	etnia_id int default 0 not null,
	rede_id int default 0 not null,
	renda_id int default 0 not null,
	matricula_id int default 0 not null,
	FOREIGN KEY (estado_id) REFERENCES estados(id),
	FOREIGN KEY (cidade_id) REFERENCES cidades(id),
	FOREIGN KEY (etnia_id) REFERENCES etnias(id),
	FOREIGN KEY (rede_id) REFERENCES redes(id),
	FOREIGN KEY (renda_id) REFERENCES rendas(id),
	FOREIGN KEY (matricula_id) REFERENCES matriculas(id),
	FOREIGN KEY (genero_id) REFERENCES generos(id)
);