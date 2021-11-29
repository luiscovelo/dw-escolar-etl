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

create table aluno(
	id int not null auto_increment primary key,
	cpf varchar(14) not null unique,
	genero varchar(2) not null,
	idade int default 0,
	data_nascimento date,
	cidade_id int default 0 not null,
	estado_id int default 0 not null,
	etnia varchar(100) default 'sem registro',
	escola_origem varchar(100) default 'sem registro',
	renda varchar(100) default 'sem registro',
	situacao_matricula varchar(100) default 'sem registro',
	FOREIGN KEY (estado_id) REFERENCES estado(id),
	FOREIGN KEY (cidade_id) REFERENCES cidade(id)
);