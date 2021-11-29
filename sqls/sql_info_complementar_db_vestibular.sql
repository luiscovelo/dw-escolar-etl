select cand.cpf,
    (
        select alt.alternativa from respostas resp
        inner join perguntas perg on perg.idperguntas = resp.perguntas_idperguntas
        inner join alternativas alt on alt.idalternativas = resp.alternativas_idalternativas
        where resp.alunos_idalunos = cand.idalunos
        and perg.idperguntas = 31
        order by resp.idresposta desc
        limit 1
    ) as etnia,
    (
        select alt.alternativa from respostas resp
        inner join perguntas perg on perg.idperguntas = resp.perguntas_idperguntas
        inner join alternativas alt on alt.idalternativas = resp.alternativas_idalternativas
        where resp.alunos_idalunos = cand.idalunos
        and perg.idperguntas = 3
        order by resp.idresposta desc
        limit 1
    ) as escola_origem,
    (
        select alt.alternativa from respostas resp
        inner join perguntas perg on perg.idperguntas = resp.perguntas_idperguntas
        inner join alternativas alt on alt.idalternativas = resp.alternativas_idalternativas
        where resp.alunos_idalunos = cand.idalunos
        and perg.idperguntas = 4
        order by resp.idresposta desc
        limit 1
    ) as renda_1,
    (
        select alt.alternativa from respostas resp
        inner join perguntas perg on perg.idperguntas = resp.perguntas_idperguntas
        inner join alternativas alt on alt.idalternativas = resp.alternativas_idalternativas
        where resp.alunos_idalunos = cand.idalunos
        and perg.idperguntas = 33
        order by resp.idresposta desc
        limit 1
    ) as renda_2,
    (
        select alt.alternativa from respostas resp
        inner join perguntas perg on perg.idperguntas = resp.perguntas_idperguntas
        inner join alternativas alt on alt.idalternativas = resp.alternativas_idalternativas
        where resp.alunos_idalunos = cand.idalunos
        and perg.idperguntas = 34
        order by resp.idresposta desc
        limit 1
    ) as renda_3
from candidatos cand