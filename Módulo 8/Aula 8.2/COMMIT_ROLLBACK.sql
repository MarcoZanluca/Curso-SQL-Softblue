CREATE TABLE contas_bancarias
(
   id_ NUMBER NOT NULL,
   titular VARCHAR(45),
   saldo FLOAT NOT NULL
);

CREATE SEQUENCE IDCONTAS_BANCARIAS;

SELECT * FROM CONTAS_BANCARIAS; 

INSERT INTO contas_bancarias VALUES (IDCONTAS_BANCARIAS.NEXTVAL, 'André', 1000);
INSERT INTO contas_bancarias VALUES (IDCONTAS_BANCARIAS.NEXTVAL,'Carlos', 2000);

UPDATE contas_bancarias SET saldo = saldo - 100 WHERE id_ = 1;
UPDATE contas_bancarias SET saldo = saldo + 100 WHERE id_ = 2;
COMMIT;
