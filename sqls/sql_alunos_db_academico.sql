select  
	pf.cpf,
	pf.sexo,
	pf.nascimento_data as data_nascimento,
	(extract(year from now()) - extract(year from pf.nascimento_data)) as idade,
	cidade.id as cidade_id,
	estado.id as estado_id,
	matricula.descricao as situacao_matricula
from pessoa_fisica pf
inner join edu_aluno aluno on aluno.pessoa_fisica_id = pf.pessoa_ptr_id
inner join edu_situacaomatricula matricula on matricula.id = aluno.situacao_id
inner join edu_cidade cidade on cidade.id = aluno.naturalidade_id
inner join edu_estado estado on estado.id = cidade.estado_id
where pf.cpf is not null



select id,nome,estado_id from edu_cidade

select id,nome from edu_estado