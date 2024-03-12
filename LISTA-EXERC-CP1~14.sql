/* 15. Desenvolva um bloco PL/SQL que receba uma string como parâmetro e
retorne o número de vogais presentes nela.*/

SET SERVEROUTPUT ON;

DECLARE
    V_STRING VARCHAR2(100) := ('&DIGITE_UMA_PALAVRA');
    V_NUM_VOGAIS NUMBER := 0;

BEGIN
    FOR I IN 1..LENGTH(V_STRING) LOOP
        IF SUBSTR(V_STRING, I, 1) IN ('A', 'E', 'I', 'O', 'U') THEN
            V_NUM_VOGAIS := V_NUM_VOGAIS + 1;
        END IF;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('O NÚMERO DE VOGAIS EM "' || V_STRING || '" É: ' || V_NUM_VOGAIS);
END;
/



