/*10. Escreva um bloco PL/SQL que utilize um loop FOR para calcular a
m�dia salarial dos funcion�rios da tabela "Funcionarios" exiba uma
mensagem utilizando dbms_output com o resultado.*/

SET SERVEROUTPUT ON;

DECLARE
   V_TOTAL_SAL NUMBER := 0;
   V_QTD_FUNCIONARIO NUMBER := 0;
   V_MED_SAL NUMBER;
    
BEGIN   
    FOR FUNCIONARIO IN (SELECT SALARIO FROM FUNCIONARIO_SEM3) LOOP
        V_TOTAL_SAL := V_TOTAL_SAL + FUNCIONARIO.SALARIO;
        V_QTD_FUNCIONARIO := V_QTD_FUNCIONARIO +1;
    END LOOP;
    
    -- CALCULA MEDIA SALARIAL
    IF V_QTD_FUNCIONARIO > 0 THEN
        V_MED_SAL := V_TOTAL_SAL / V_QTD_FUNCIONARIO;
        
        DBMS_OUTPUT.PUT_LINE('A MEDIA SALARIAL DOS FUNCIONARIOS �: ' || V_MED_SAL);
    ELSE
        DBMS_OUTPUT.PUT_LINE('N�O H� FUNCIONARIOS NA TABLEA.');
    END IF;
END;
/
