# PROJETO DE SOFTWARE DE DATAWAREHOUSE

<br>

A finalidade deste projeto é aplicar na prática o conteúdo passada em aula na matéria de Inteligência de Negócios II, referente ao 8º período de Sistemas de Informação.

## Cenário:
Considere uma organização da área de eduação que possui 2 sistemas distintos:
* Sistema Acadêmico: contém tudo relacionado ao aluno/curso.
* Sistema de Vestibular: contém os dados de candidatos interessados nos processos seletivos.

## Problema:

Em uma auditoria governamental, foram solicitados os seguintes dados:
* Quantitativos de alunos por:
    * Etnia
    * Gênero
    * Escola origem (Rede pública/Rede particular)
    * Renda Familiar
    * Naturalidade (Estado - Cidade)
    * Faixa Etária
    * Situação de matrícula

Porém, foi identificado que no sistema acadêmico não há informação de etnia, escola origem e renda familiar, no entanto, tais informações podem ser encontradas no sistema de vestibular, pois há um questionário dinâmico em que são solicitadas estas informações aos candidatos interessados.

### Solução:

Desenvolver uma solução de Datawarehouse que integre o sistema acadêmico e o de vestibular.

Você consegue mais informações sobre o escopo do projeto neste documento: [descricao-do-trabalho.pdf](/descricao-do-trabalho.pdf?raw=true).

<br>

# Como este trabalho foi feito?

Foram dividas em dois repositórios:
* dw-escolar-elt:
    * Este reune todo o processo de ETL.
* dw-escolar-web-report ([acesso ao repositório](https://github.com/luiscovelo/dw-escolar-web-report)):
    * Este é o sistema web responsável por apresentar a análise de dados.

Veja o modelo [MER](/imgs/modelo-er.png) do referido datawarehouse desenvolvido.

Utilizamos a ferramenta Pentaho Data Integration (PDI), para realizar todo o processo de ETL, confira abaixo o fluxo das transformações para extrair, juntar, tratar e inserir no datawarehouse.

Transformações ETL:
* [Carga do aluno](/imgs/transformacao-aluno.png):
    * Este foi a mais complexa transformação devido ao fato da necessidade de juntar duas bases de dados diferentes, agrupar as informações chaves e realizar as devidas tratativas para que a inserção no DW ocorresse de acordo.
* [Job para executar as transformações](/imgs/job-carga.png):
    * Para que fosse possível executar todas as transformações nas devidas ordens até a carga no datawarehouse, criamos um Job e incluimos a cada transformação na sua devida ordem.

Após o job de transformações ser executado, teremos um datawarehouse alimentado e pronto para ser analisado.

<br>

# Análise dos dados

Como proposto no trabalho a criação de um software onde fosse possível análisar todos as dimensões solicitadas pela auditoria, criamos um website e você pode conferir [aqui](http://dwescolar.dropcode.com.br/) (disponível por tempo limitado).

Caso não seja possível acessar o website, confira esta [screenshot](/imgs/web-report.jpeg).