--alter session set nls_date_format = 'dd/mm/yy hh24:mi:ss'
--select user, sysdate from dual


declare
  v_usuario varchar2(100);
  v_data  date;
begin
  select user, sysdate
  into v_usuario, v_data
  from dual;
  
  dbms_output.put_line(v_usuario || ' ' || v_data);
end;