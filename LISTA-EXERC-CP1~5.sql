/* 6. Escreva um bloco PL/SQL que utilize um loop FOR para percorrer a
tabela "Funcionarios" e exibir os nomes dos funcionários. */

SET SERVEROUTPUT ON;

DECLARE
    V_NOME FUNCIONARIO_SEM3.NOME%TYPE;
    
BEGIN   
    FOR FUNCIONARIO IN (SELECT NOME FROM FUNCIONARIO_SEM3) LOOP
        V_NOME := FUNCIONARIO.NOME;
        DBMS_OUTPUT.PUT_LINE('NOME DO FUNCIONARIO: ' || V_NOME);
    END LOOP;
END;
/
