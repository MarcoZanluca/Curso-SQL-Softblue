CREATE TABLE CONTA_BANCARIA
(
codigo NUMBER NOT NULL, -- Código interno (PK)
titular VARCHAR(32) NOT NULL, -- Nome do titular da conta
saldo FLOAT NOT NULL, -- Representa o saldo da conta
PRIMARY KEY(codigo) -- Define o campo CODIGO como PK (Primary Key)
);

CREATE SEQUENCE ID_CONTA_BANCARIA;

INSERT INTO conta_bancaria VALUES (ID_CONTA_BANCARIA.NEXTVAL, 'André', 213);
INSERT INTO conta_bancaria VALUES (ID_CONTA_BANCARIA.NEXTVAL, 'Diogo', 489);
INSERT INTO conta_bancaria VALUES (ID_CONTA_BANCARIA.NEXTVAL, 'Rafael', 568);
INSERT INTO conta_bancaria VALUES (ID_CONTA_BANCARIA.NEXTVAL, 'Carlos', 712);
INSERT INTO conta_bancaria VALUES (ID_CONTA_BANCARIA.NEXTVAL, 'Peter', -38);

SELECT * FROM conta_bancaria;

UPDATE conta_bancaria SET saldo = saldo + (saldo/100*3);
COMMIT;
ROLLBACK;
