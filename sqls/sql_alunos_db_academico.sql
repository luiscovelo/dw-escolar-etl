select  
	pf.cpf,
	pf.sexo,
	pf.nascimento_data as data_nascimento,
	(extract(year from now()) - extract(year from pf.nascimento_data)) as idade,
	cidade.id as nat_cid_id,
	cidade.nome as nat_cid_nome,
	estado.id as nat_est_id,
	estado.nome as nat_est_nome,
	(null) as etnia,
	(null) as escola_origem,
	(null) as renda,
	(null) as situacao_matricula
from pessoa_fisica pf
inner join edu_aluno aluno on aluno.pessoa_fisica_id = pf.pessoa_ptr_id
inner join edu_cidade cidade on cidade.id = aluno.naturalidade_id
inner join edu_estado estado on estado.id = cidade.estado_id