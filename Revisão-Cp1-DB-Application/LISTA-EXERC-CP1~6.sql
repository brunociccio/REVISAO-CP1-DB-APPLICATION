/* 7.Desenvolva um bloco PL/SQL que receba duas datas como parâmetros e
retorne o número de dias entre elas.*/

SET SERVEROUTPUT ON;

DECLARE
    V_DATA_INICIO DATE := TO_DATE('&DIGITE_UMA_DATA', 'DD/MM/YYYY');
    V_DATA_FINAL DATE := TO_DATE('&DIGITE_OUTRA_DATA', 'DD/MM/YYYY');
    V_DIFERENCA NUMBER;
    
BEGIN   
    V_DIFERENCA := V_DATA_FINAL - V_DATA_INICIO;
    DBMS_OUTPUT.PUT_LINE('A DIFERENÇA DE DIAS ENTRE AS DATAS INFORMADAS SÃO DE: ' || V_DIFERENCA || ' DE DIAS');
    
END;
/