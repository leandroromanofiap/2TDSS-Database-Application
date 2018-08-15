create or replace function fun_nome_grupo
(
p_grupo_veiculo loc_grupo.cd_grupo%type
) return varchar2
is 
  v_nome  varchar2(255);
begin
  select UPPER(ds_grupo)
    into v_nome
    from loc_grupo
  where cd_grupo = p_grupo_veiculo;
  return v_nome;
exception
  when others then
    return 'Código do grupo não está cadastrado. Favor informar um código válido!';
end;

select * from loc_grupo;
select fun_nome_grupo(2) from dual;