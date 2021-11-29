#Lista de etnias
select etnia from aluno  
where etnia is not null 
group by etnia 
order by etnia asc

#Lista de cidades onde existem alunos
select cid.id,cid.nome from aluno a
join cidade cid on cid.id = a.cidade_id
group by cid.id
order by cid.nome

#Lista de estados onde existem alunos
select est.id,est.nome from aluno a
join cidade cid on cid.id = a.cidade_id
join estado est on est.id = cid.estado_id
group by est.id
order by est.nome asc

#Lista de generos
select genero from aluno
group by genero
order by genero asc

#Lista de escolas origem
select escola_origem from aluno
where escola_origem is not null
group by escola_origem
order by escola_origem asc

#Lista de faixa etária
select idade from aluno
where idade is not null
group by idade
order by idade asc

#Lista de renda familiar
select renda from aluno
where renda is not null
group by renda
order by renda asc

#Lista de situacao de matricula
select situacao_matricula from aluno
where situacao_matricula is not null
group by situacao_matricula
order by situacao_matricula asc

#QUERYS FOR REPORTS

#Query quantitativo por etnia
select 
	a.etnia, 
	count(a.id) as qtde 
from aluno a
join cidade cid on cid.id = a.cidade_id
join estado est on est.id = cid.estado_id
group by a.etnia

#Query quantitativo por genero
select 
	a.genero, 
	count(a.id) as qtde 
from aluno a
join cidade cid on cid.id = a.cidade_id
join estado est on est.id = cid.estado_id
group by a.genero

#Query quantitativo por rede
select 
	a.escola_origem, 
	count(a.id) as qtde 
from aluno a
join cidade cid on cid.id = a.cidade_id
join estado est on est.id = cid.estado_id
group by a.escola_origem

#Query quantitativo por renda
select 
	a.renda, 
	count(a.id) as qtde 
from aluno a
join cidade cid on cid.id = a.cidade_id
join estado est on est.id = cid.estado_id
group by a.renda

#Query quantitativo por naturalidade - cidade
select 
	cid.nome, 
	count(a.id) as qtde 
from aluno a
join cidade cid on cid.id = a.cidade_id
join estado est on est.id = cid.estado_id
group by cid.id

#Query quantitativo por naturalidade - estado
select 
	est.nome, 
	count(a.id) as qtde 
from aluno a
join cidade cid on cid.id = a.cidade_id
join estado est on est.id = cid.estado_id
group by est.id

#Query quantitativo por faixa etaria
select 
	a.idade, 
	count(a.id) as qtde 
from aluno a
join cidade cid on cid.id = a.cidade_id
join estado est on est.id = cid.estado_id
group by a.idade

#Query quantitativo por situacao de matricula
select 
	a.situacao_matricula, 
	count(a.id) as qtde 
from aluno a
join cidade cid on cid.id = a.cidade_id
join estado est on est.id = cid.estado_id
group by a.situacao_matricula