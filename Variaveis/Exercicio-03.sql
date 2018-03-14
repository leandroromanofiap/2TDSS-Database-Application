declare
  v_qtd number;
begin 
  select sum(length(cd_cliente||nm_cliente||pontuacao))
  into v_qtd
  from pf0064.cliente_erp;
  
  dbms_output.put_line('Qtd de caractered: ' || v_qtd);
end;