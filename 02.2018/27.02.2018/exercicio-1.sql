set serveroutput on

declare
    v_nome varchar2(100);
    v_idade number;
begin
    v_nome := 'Leandro Romano';
    v_idade := 21;
    dbms_output.put_line('Nome: ' || v_nome || ' - Idade: ' || v_idade);
end;