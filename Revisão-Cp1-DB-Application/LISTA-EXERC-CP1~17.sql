/*18.Escreva um bloco PL/SQL que utilize um loop FOR para calcular o
total de Funcionários com salário menor ou igual salário-mínimo de R$
1412,00, consultando a tabela "FUNCIONARIOS_SEM3".*/


SET SERVEROUTPUT ON;

DECLARE
    V_TOTAL_FUNCIONARIOS NUMBER := 0;
    V_SAL_MIN NUMBER := 1412.00;
BEGIN
    FOR FUNCIONARIO IN (SELECT SALARIO FROM FUNCIONARIO_SEM3) LOOP
        IF FUNCIONARIO.SALARIO <= V_SAL_MIN THEN
            V_TOTAL_FUNCIONARIOS := V_TOTAL_FUNCIONARIOS + 1;
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('O TOTAL DE FUNCIONARIOS COM O SALARIO MENOR OU IGUAL A R$1412,00 é: ' || V_TOTAL_FUNCIONARIOS);
END;
/


