declare
  v_idade number := &Idade;
begin
  IF v_idade < 18 THEN
    dbms_output.put_line('ADOLESCENTE');
  ELSIF v_idade < 10 THEN
    dbms_output.put_line('CRIANÇA');
  ELSE
    dbms_output.put_line('ADULTO');
  END IF;
end;