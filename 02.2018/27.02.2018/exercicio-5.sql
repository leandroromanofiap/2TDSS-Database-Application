declare
    v_data date := to_date('01/01/2018', 'dd/mm/yyyy');
begin
    dbms_output.put_line(to_char(v_data, 'dd mm yyyy d day'));
end;