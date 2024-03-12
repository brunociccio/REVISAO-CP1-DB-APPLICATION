/* 9. Crie uma tabela chamada "Numeros_Primos" com uma coluna
"Numero". Escreva um bloco PL/SQL que verifique se um n�mero � primo
ou n�o, utilizando um loop WHILE e insira o resultado na tabela
"Numeros_Primos".*/

SET SERVEROUTPUT ON;

-- Deletando tabela se j� existir
DROP TABLE NUMEROS_PRIMOS;

-- Criando a tabela NUMEROS_PRIMOS
CREATE TABLE NUMEROS_PRIMOS (
    NUMERO INTEGER
);



DECLARE
    V_SALARIO FUNCIONARIO_SEM3.SALARIO%TYPE;
BEGIN
    SELECT SALARIO INTO V_SALARIO FROM FUNCIONARIO_SEM3 WHERE NOME = 'JO�O';
    IF V_SALARIO > 5000 THEN
        DBMS_OUTPUT.PUT_LINE('O SAL�RIO DE JO�O � MAIOR QUE 5.000');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O SAL�RIO DE JO�O N�O � MAIOR QUE 5.000');
    END IF;
END;
/