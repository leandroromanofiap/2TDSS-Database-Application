create or replace function fun_qtd_func_depto
(
p_cd_depto  loc_funcionario.cd_depto%type
) return number
is
  v_qtd number;
begin
  select count(1)
    into v_qtd
    from loc_fucionario
  where cd_depto = p_cd_depto;
  return v_qtd;
exception
  when others then
    return 0;
end;