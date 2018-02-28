declare
    v_nomecompleto varchar2(100) := 'aaa bbb ccc';
begin
    dbms_output.put_line(initcap(v_nomecompleto));
end;