CREATE TABLE pedidos
(
   id_ NUMBER NOT NULL,
   descricao VARCHAR2(100) NOT NULL,
   valor FLOAT DEFAULT 0,
   pago VARCHAR2(3) DEFAULT 'Não',
   PRIMARY KEY (id_)
);
CREATE SEQUENCE id_ped;

INSERT INTO pedidos (id_, descricao, valor) VALUES (id_ped.NEXTVAL, 'TV', 3000);
INSERT INTO pedidos (id_, descricao, valor) VALUES (id_ped.NEXTVAL, 'Geladeira', 1400);
INSERT INTO pedidos (id_, descricao, valor) VALUES (id_ped.NEXTVAL, 'DVD Player', 300);

SELECT * FROM pedidos;

create or replace procedure LIMPA_PEDIDOS is
BEGIN
  DELETE pedidos WHERE pago = 'Não';
  COMMIT;
end LIMPA_PEDIDOS;

CALL limpa_pedidos();
