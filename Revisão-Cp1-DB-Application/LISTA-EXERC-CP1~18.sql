/*19.Desenvolva um bloco PL/SQL que receba um número como parâmetro
e retorne a soma dos seus dígitos.*/

SET SERVEROUTPUT ON;

DECLARE
    V_NUMERO NUMBER := &DIGITE_UM_NUMERO;
    V_SOMA_DIGITOS NUMBER := 0;
    V_DIGITO CHAR(1);
BEGIN  
    FOR I IN 1..LENGTH(TO_CHAR(V_NUMERO)) LOOP
        V_DIGITO := SUBSTR(TO_CHAR(V_NUMERO), I, 1);
        V_SOMA_DIGITOS := V_SOMA_DIGITOS + TO_NUMBER(V_DIGITO);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('A SOMA DOS DIGITOS DO NUMERO INFORMADO ' || V_NUMERO || ' É: ' || V_SOMA_DIGITOS);
END;
/
