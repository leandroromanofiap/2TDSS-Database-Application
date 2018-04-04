declare
    v_nr_placa  loc_veiculo.nr_placa%type := '&Placa';
    v_modelo    loc_veiculo.modelo%type;
    v_cor       loc_veiculo.cor%type;
    v_nome_prop LOC_PROPRIETARIO.NOME_PROPRIETARIO%type;
    v_cont      number;
begin
    select count(1)
    into v_cont
    from loc_veiculo v, loc_proprietario p
    where nr_placa = v_nr_placa
        and v.cd_proprietario = p.cd_proprietario;
        
    if v_cont = 0 then
        dbms_output.put_line('NAO EXISTE DADOS DE VEICULO CADASTRADOS.');
    else
        select p.nome_proprietario, v.nr_placa, v.modelo, v.cor
        into v_nome_prop, v_nr_placa, v_modelo, v_cor
        from loc_veiculo v, loc_proprietario p
        where v.cd_proprietario = p.cd_proprietario
            and v.nr_placa = v_nr_placa;
           
        dbms_output.put_line('O VEICULO DE PLACA ' || v_nr_placa || ' PERTENCE AO PROPRIETARIO ' ||
            v_nome_prop || ' é do modelo ' || v_modelo || ' e tem a cor ' || v_cor);       
            
    end if;
end;