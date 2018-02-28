declare
    v_nomecompleto varchar2(100) := 'Leandro Romano';
begin
    dbms_output.put_line(substr(v_nomecompleto, 1, instr(v_nomecompleto, ' ') - 1));  
end;