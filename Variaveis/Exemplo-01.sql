--create table cliente_erp as
--select * from pf0064.cliente_erp;

--set serveroutput on

declare
  v_cd_cliente  number;
  v_nm_cliente  varchar2(100);
begin
  select cd_cliente, nm_cliente
  into v_cd_cliente, v_nm_cliente
  from cliente_erp
  where cd_cliente = 1;
  
  dbms_output.put_line(v_cd_cliente || ' ' || v_nm_cliente);
end;