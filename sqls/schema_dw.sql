create table alunos(
	id int not null auto_increment primary key,
	cpf varchar(11) not null,
	genero_id int not null,
	idade int default 0,
	data_nascimento date,
	nat_cid_id int default 0,
	nat_cid_nome varchar(100) default 'sem registro',
	nat_est_id int default 0,
	nat_est_nome varchar(100) default 'sem registro',
	etnia varchar(100) default 'sem registro',
	escola_origem varchar(100) default 'sem registro',
	renda varchar(100) default 'sem registro'
	situacao_matricula varchar(100) default 'sem registro'
);

create table genero(
	id int not null auto_increment primary key,
	sexo varchar(100) not null,
);