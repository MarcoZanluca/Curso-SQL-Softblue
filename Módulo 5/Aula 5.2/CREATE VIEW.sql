--QUANDO UM SELECT FOR MUITO UTILIZADO

CREATE VIEW FUNCIONARIO_A AS
SELECT * FROM FUNCIONARIOS WHERE SALARIO >= 2000;

SELECT * FROM FUNCIONARIO_A;
UPDATE FUNCIONARIOS SET SALARIO = 1500 WHERE ID_ = 9;
DROP VIEW FUNCIONARIO_A;
