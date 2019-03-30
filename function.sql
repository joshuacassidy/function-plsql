SET SERVEROUTPUT ON;


create or replace FUNCTION test(name IN VARCHAR2) RETURN VARCHAR2
  
  IS
  msg VARCHAR2(255);
  BEGIN

    msg := 'hello ' || name || '!';
    RETURN msg;
  END;



/

DECLARE 
  name varchar2(100);
BEGIN 
        dbms_output.put_line(test('josh')); 
END;