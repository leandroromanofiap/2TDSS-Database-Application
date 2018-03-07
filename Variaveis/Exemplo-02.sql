--set serveroutput on

select * from cliente_erp;

--%TYPE
declare
  v_cd_cliente  cliente_erp.cd_cliente%type;
  v_nm_cliente  cliente_erp.nm_cliente%type;
  v_pontuacao   cliente_erp.pontuacao%type;
begin
  select cd_cliente, nm_cliente, pontuacao
  into v_cd_cliente, v_nm_cliente, v_pontuacao
  from cliente_erp
  where cd_cliente = 1;
  
  dbms_output.put_line(v_cd_cliente || ' ' || v_nm_cliente || ' ' || v_pontuacao);
end;

--%ROWTYPE
declare
  v_registro  cliente_erp%rowtype;
begin
  select *
  into v_registro
  from cliente_erp
  where cd_cliente = 1;
  
  dbms_output.put_line(v_registro.cd_cliente || ' ' || v_registro.nm_cliente);
end;