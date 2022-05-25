create or replace procedure LIMPA_PEDIDOS is
begin
  DELETE pedidos WHERE pago = 'Não';
  --COMMIT;
end LIMPA_PEDIDOS;
/
