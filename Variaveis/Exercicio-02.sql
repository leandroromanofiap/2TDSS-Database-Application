--select * from pf0064.cliente_erp;

declare
  v_valor number;
begin
  select sum(pontuacao)
  into v_valor
  from pf0064.cliente_erp;
  
  dbms_output.put_line('Pontos: ' || v_valor);
end;