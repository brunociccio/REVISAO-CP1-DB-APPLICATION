/*17. Crie um bloco PL/SQL que receba uma data como parâmetro e retorne
o dia da semana correspondente.*/

SET SERVEROUTPUT ON;

DECLARE
    V_DATA DATE := TO_DATE('&DIGITE_UMA_DATA', 'DD/MM/YYYY'); 
    V_DIA_SEMANA VARCHAR(100);
    V_NUM_DIA NUMBER;
    
BEGIN
    V_NUM_DIA := MOD(TO_CHAR(V_DATA, 'I'), 7) + 1;
    
    CASE V_NUM_DIA
        WHEN 1 THEN V_DIA_SEMANA := 'DOMINGO';
        WHEN 2 THEN V_DIA_SEMANA := 'SEGUNDA-FEIRA';
        WHEN 3 THEN V_DIA_SEMANA := 'TERÇA-FEIRA';
        WHEN 4 THEN V_DIA_SEMANA := 'QUARTA-FEIRA';
        WHEN 5 THEN V_DIA_SEMANA := 'QUINTA-FEIRA';
        WHEN 6 THEN V_DIA_SEMANA := 'SEXTA-FEIRA';
        WHEN 7 THEN V_DIA_SEMANA := 'SÁBADO';
    END CASE;
    
    DBMS_OUTPUT.PUT_LINE('O DIA DA SEMANA CORRESPONDENTE A DATA ' || TO_CHAR(V_DATA, 'DD/MM/YYYY') || ' É: ' || V_DIA_SEMANA);
END;
/