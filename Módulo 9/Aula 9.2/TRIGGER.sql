CREATE TABLE estoque
(
   id_ NUMBER NOT NULL,
   descricao VARCHAR2(50),
   quantidade NUMBER NOT NULL,
   PRIMARY KEY (id_)
);

INSERT INTO pedidos (id_, descricao, valor) VALUES (id_ped.NEXTVAL, 'TV', 3000);
INSERT INTO pedidos (id_, descricao, valor) VALUES (id_ped.NEXTVAL, 'Geladeira', 1400);
INSERT INTO pedidos (id_, descricao, valor) VALUES (id_ped.NEXTVAL, 'DVD Player', 300);
SELECT * FROM pedidos;
UPDATE pedidos SET pago = 'Sim' WHERE id_ = 17;

CREATE SEQUENCE id_estoque;
INSERT INTO estoque (id_, descricao, quantidade) VALUES (id_estoque.NEXTVAL, 'Fogão', 5);

INSERT INTO estoque (id_, descricao, quantidade) VALUES (id_estoque.NEXTVAL, 'Forno', 3);
SELECT * FROM estoque;
