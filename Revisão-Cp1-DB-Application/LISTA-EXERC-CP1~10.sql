/* 11.Desenvolva um bloco PL/SQL que receba um n�mero pelo teclado e
retorne o quadrado desse n�mero, utilizando dbms_output.*/

SET SERVEROUTPUT ON;

DECLARE
    V_NUMERO NUMBER := &DIGITE_UM_NUMERO;
    V_QUADRADO NUMBER;
    
BEGIN   
    V_QUADRADO := V_NUMERO * V_NUMERO;
    DBMS_OUTPUT.PUT_LINE('O QUADRADO DE ' || V_NUMERO || ' �: ' || V_QUADRADO);

END;
/
