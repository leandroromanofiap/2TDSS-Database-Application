set serveroutput on

declare
    v_valor1 number := 7;
    v_valor2 number := 5.5;
    v_valor3 number := 3.5;
    v_valor4 number := 2;
    v_valor5 number := 8.4;
    v_media integer := 0;
begin
    v_media := trunc((v_valor1 + v_valor2 + v_valor3 + v_valor4 + v_valor5) / 5);
    --v_media := round((v_valor1 + v_valor2 + v_valor3 + v_valor4 + v_valor5) / 5);
    
    dbms_output.put_line('Média: ' || v_media);
end;