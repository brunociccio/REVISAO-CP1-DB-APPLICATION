/* 7.Desenvolva um bloco PL/SQL que receba duas datas como par�metros e
retorne o n�mero de dias entre elas.*/

SET SERVEROUTPUT ON;

DECLARE
    V_DATA_INICIO DATE := TO_DATE('&DIGITE_UMA_DATA', 'DD/MM/YYYY');
    V_DATA_FINAL DATE := TO_DATE('&DIGITE_OUTRA_DATA', 'DD/MM/YYYY');
    V_DIFERENCA NUMBER;
    
BEGIN   
    V_DIFERENCA := V_DATA_FINAL - V_DATA_INICIO;
    DBMS_OUTPUT.PUT_LINE('A DIFEREN�A DE DIAS ENTRE AS DATAS INFORMADAS S�O DE: ' || V_DIFERENCA || ' DE DIAS');
    
END;
/