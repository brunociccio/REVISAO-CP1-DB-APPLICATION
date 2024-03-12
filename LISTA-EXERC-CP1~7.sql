/* 8.Implemente um bloco PL/SQL que utilize um loop FOR para inserir 10
registros na tabela "Funcionarios".*/

SET SERVEROUTPUT ON;

DECLARE
    V_NOME VARCHAR2(100);
    V_SALARIO NUMBER;

BEGIN   
    -- LOOP FOR
    FOR I IN 1..10 LOOP
        V_NOME := 'FUNCIONARIO_SEM3_' || I;
        V_SALARIO := 3000 + (I * 150);
        -- INSERINDO NA TABELA
        INSERT INTO FUNCIONARIO_SEM3 (NOME, SALARIO) VALUES (V_NOME, V_SALARIO);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('INSERIDO 10 REGISTROS NOVOS NA TABELA FUNCIONARIO.');

END;
/