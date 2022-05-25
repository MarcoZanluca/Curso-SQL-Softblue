--EXERCÍCIO 2
SELECT * FROM CURSOS;
SELECT * FROM TIPO;
SELECT * FROM INSTRUTOR;
SELECT * FROM ALUNOS;
SELECT * FROM DADOS_COMPRA;
SELECT * FROM DETALHES_COMPRA;

SELECT C.NOME "Nome do Curso"
  FROM CURSOS C
 WHERE C.TIPO IN (SELECT T.CODIGO FROM TIPO T WHERE T.CODIGO LIKE '%T2%')
 
--Utilizando subquery e o parâmetro EXISTS, exiba novamente os nomes dos cursos disponibilizados pela
--Softblue cujo tipo de curso seja 'Programação';

SELECT C.NOME "Nome do Curso"
  FROM CURSOS C
 WHERE EXISTS (SELECT T.CODIGO FROM TIPO T WHERE C.TIPO = T.CODIGO AND T.CODIGO = 'T2')
 
--Exiba uma lista com os nomes dos instrutores da Softblue e ao lado o total acumulado das vendas
--referente aos cursos pelo qual o instrutor é responsável;
          
SELECT i.nome, SUM(dc.preco) "Soma dos cursos"
  FROM instrutor i
 INNER JOIN cursos c
    ON (c.instrutor = i.codigo)
 INNER JOIN detalhes_compra dc
    ON (dc.curso = c.codigo)
GROUP BY i.nome;

--Crie uma visão que exiba os nomes dos alunos e quanto cada um já comprou em cursos;
SELECT * FROM ALUNOS; 
SELECT * FROM DADOS_COMPRA;
SELECT * FROM DETALHES_COMPRA;

CREATE VIEW NOMES_ALUNOS AS
SELECT A.ALUNO "NOME ALUNO", SUM(DC.PRECO) "COMPRAS EM CURSOS"
  FROM DADOS_COMPRA D
 INNER JOIN ALUNOS A
 ON D.ALUNO = A.CODIGO
 INNER JOIN DETALHES_COMPRA DC
 ON D.CODIGO = DC.PEDIDO
 GROUP BY A.ALUNO ORDER BY A.ALUNO;

SELECT * FROM NOMES_ALUNOS;

SELECT D.ALUNO FROM DADOS_COMPRA D WHERE D.ALUNO LIKE 'A%' GROUP BY D.ALUNO;

