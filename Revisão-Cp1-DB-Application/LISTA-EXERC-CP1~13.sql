/*14.Escreva um bloco PL/SQL que utilize um loop FOR para exibir os
n�meros pares de 1 a 20.*/


SET SERVEROUTPUT ON;

DECLARE
    V_INICIO NUMBER := 1;
    V_FINAL NUMBER := 20;
    V_NUMEROS_PARES NUMBER;

BEGIN
    FOR V_NUMEROS_PARES IN V_INICIO..V_FINAL LOOP
        IF MOD(V_NUMEROS_PARES, 2) = 0 THEN
            DBMS_OUTPUT.PUT_LINE('OS N�MEROS PARES S�O: ' || V_NUMEROS_PARES);
        END IF;
    END LOOP;
END;
/


