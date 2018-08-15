create or replace function fun_val_med_loc_cliente
(
p_cd_cliente  loc_cliente.cd_cliente%type
) return number
is
  v_total number;
begin
  select trunc(nvl(avg(p.vl_total), 0))
    into v_total
    from loc_cliente c 
  join loc_pedido_locacao p on p.cd_cliente = c.cd_cliente
  where c.cd_cliente = p_cd_cliente and vl_total is not null;
  return v_total;
exception
  when others then
    return 0;
end;

select * from loc_cliente;
select * from loc_pedido_locacao where cd_cliente = 8 and vl_total is not null;
select fun_val_med_loc_cliente(8) from dual;