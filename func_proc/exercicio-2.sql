create or replace function fun_nome_veiculo
(
p_nr_placa  loc_veiculo.nr_placa%type
) return varchar2
is
  v_placa varchar2(255);
begin
  select UPPER(modelo || ' - ' || cor || ' - ' || tipo_automovel)
    into v_placa
  from loc_veiculo
  where nr_placa = p_nr_placa;
  return v_placa;
exception
  when others then
    return 'Placa ' || p_nr_placa || ' do veículo não está cadastrada. Favor informar um código válido !';
end;

select fun_nome_veiculo('CZR9988') from dual;