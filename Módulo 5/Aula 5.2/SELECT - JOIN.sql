SELECT * FROM FUNCIONARIOS;
SELECT * FROM VEICULOS; --FOR UPDATE;
SELECT * FROM CPF;

--***JOINS - TIPOS DE JOIN***--

SELECT * FROM FUNCIONARIOS F INNER JOIN VEICULOS V ON V.FUNCIONARIO_ID = F.ID_;
SELECT * FROM FUNCIONARIOS F LEFT JOIN VEICULOS V ON V.FUNCIONARIO_ID = F.ID_;
SELECT * FROM FUNCIONARIOS F RIGHT JOIN VEICULOS V ON V.FUNCIONARIO_ID = F.ID_;

SELECT * FROM FUNCIONARIOS F FULL JOIN VEICULOS V ON V.FUNCIONARIO_ID = F.ID_;

SELECT * FROM FUNCIONARIOS F INNER JOIN CPF USING(ID_);

-- SELECT TABELA CLIENTES

SELECT * FROM CLIENTES;
SELECT A.NOME, B.NOME AS QUEM_INDICOU FROM CLIENTES A JOIN CLIENTES B ON A.QUEM_INDICOU = B.ID_;  

SELECT * FROM FUNCIONARIOS F 
INNER JOIN VEICULOS V ON V.FUNCIONARIO_ID = F.ID_ 
INNER JOIN CPF ON CPF.ID_ = F.ID_;
