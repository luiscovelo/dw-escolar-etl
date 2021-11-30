create table estado(
	id int not null auto_increment primary key,
	nome varchar(255) not null
);

create table cidade(
	id int not null auto_increment primary key,
	nome varchar(255) not null,
	estado_id int default 0 not null,
	FOREIGN KEY (estado_id) REFERENCES estado(id)
);

create table etnia(
	id int not null auto_increment primary key,
	nome varchar(255) not null
);

create table rede(
	id int not null auto_increment primary key,
	nome varchar(255) not null
);

create table renda(
	id int not null auto_increment primary key,
	faixa varchar(255) not null
);

create table matricula(
	id int not null auto_increment primary key,
	situacao varchar(255) not null
);

create table genero(
	id int not null auto_increment primary key,
	nome varchar(2) not null
);

create table aluno(
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
	FOREIGN KEY (estado_id) REFERENCES estado(id),
	FOREIGN KEY (cidade_id) REFERENCES cidade(id),
	FOREIGN KEY (etnia_id) REFERENCES etnia(id),
	FOREIGN KEY (rede_id) REFERENCES rede(id),
	FOREIGN KEY (renda_id) REFERENCES renda(id),
	FOREIGN KEY (matricula_id) REFERENCES matricula(id),
	FOREIGN KEY (genero_id) REFERENCES genero(id)
);