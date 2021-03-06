--EXERC?CIO 2

SELECT * FROM CURSOS;
SELECT * FROM TIPO;

CREATE VIEW CURSOS_1 AS
SELECT C.NOME AS TITULO, C.PRECO FROM CURSOS C WHERE C.TIPO LIKE '%T2';

SELECT * FROM CURSOS_1;

CREATE VIEW CURSOS_2 AS
SELECT C.NOME AS NOME_CURSO, T.NOME AS TIPO_CURSO, I.NOME AS INSTRUTOR FROM CURSOS C 
INNER JOIN TIPO T ON C.TIPO = T.CODIGO
INNER JOIN INSTRUTOR I ON C.INSTRUTOR = I.CODIGO;

SELECT * FROM CURSOS_2;

CREATE VIEW PEDIDOS_1 AS
SELECT DC.PEDIDO, A.ALUNO, D.DIA, D.CODIGO AS CODIGO_PEDIDO FROM DADOS_COMPRA D 
INNER JOIN DETALHES_COMPRA DC ON D.CODIGO = DC.PEDIDO
INNER JOIN ALUNOS A ON A.CODIGO = D.ALUNO;

SELECT * FROM PEDIDOS_1;
