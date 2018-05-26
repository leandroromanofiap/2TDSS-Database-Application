declare
    cursor c_funcionario is
        select 
            f.cd_depto, 
            d.nm_depto,
            sum(vl_salario) vl_salario_mes, 
            sum(12 * vl_salario) vl_salario_ano
                from loc_funcionario f
                inner join loc_depto d on d.cd_depto = f.cd_depto
            group by f.cd_depto, d.nm_depto;
        
    v_funcionario   c_funcionario%rowtype;
    
    v_depto_nome    loc_depto.nm_depto%type;
    v_depto_codigo  loc_depto.cd_depto%type;
begin
    open c_funcionario;
        loop
            fetch c_funcionario into v_funcionario;
            exit when c_funcionario%notfound;

            begin
                insert into custos_depto 
                    values (v_funcionario.cd_depto, 
                            v_funcionario.nm_depto, 
                            v_funcionario.vl_salario_mes, 
                            v_funcionario.vl_salario_ano, 
                            SYSDATE);
                    dbms_output.put_line('O departamento ' || v_funcionario.nm_depto || ' foi inserido!');        
            exception
                when DUP_VAL_ON_INDEX then
                    update custos_depto SET
                        vl_salario_mes = v_funcionario.vl_salario_mes,
                        vl_salario_ano = v_funcionario.vl_salario_ano
                    where id_depto = v_funcionario.cd_depto;
                    dbms_output.put_line('O departamento ' || v_funcionario.nm_depto || ' foi atualizado!');
            end;
        end loop;
    close c_funcionario;
end;