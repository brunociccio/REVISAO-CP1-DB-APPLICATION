/* 13. Crie um bloco PL/SQL que verifique se uma determinada string é um
palíndromo.*/

SET SERVEROUTPUT ON;

DECLARE
    V_STRING VARCHAR2(100) := '&STRING'; -- Solicita ao usuário que insira a string
    V_REVERSE_STRING VARCHAR2(100); -- Variável para armazenar a string invertida
    V_PALINDROME BOOLEAN := TRUE; -- Variável para indicar se a string é um palíndromo
    
BEGIN
    -- Inverte a string
    FOR i IN REVERSE 1..LENGTH(V_STRING) LOOP
        V_REVERSE_STRING := V_REVERSE_STRING || SUBSTR(V_STRING, I, 1);
    END LOOP;
    
    -- Verifica se a string original é igual à sua inversão
    IF V_STRING <> V_REVERSE_STRING THEN
        V_PALINDROME := FALSE;
    END IF;
    
    -- Exibe o resultado
    IF V_PALINDROME THEN
        DBMS_OUTPUT.PUT_LINE('A STRING "' || V_STRING || '" É UM PLAINDROME.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('A STRING "' ||V_STRING || '" NÃO É UM PALINDROME.');
    END IF;
END;
/
