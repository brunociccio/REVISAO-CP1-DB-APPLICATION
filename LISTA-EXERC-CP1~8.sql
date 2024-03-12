/* 9. Crie uma tabela chamada "Numeros_Primos" com uma coluna
"Numero". Escreva um bloco PL/SQL que verifique se um número é primo
ou não, utilizando um loop WHILE e insira o resultado na tabela
"Numeros_Primos".*/

SET SERVEROUTPUT ON;

-- Deletando tabela se já existir
DROP TABLE NUMEROS_PRIMOS;

-- Criando a tabela NUMEROS_PRIMOS
CREATE TABLE NUMEROS_PRIMOS (
    NUMERO INTEGER
);



DECLARE
    V_SALARIO FUNCIONARIO_SEM3.SALARIO%TYPE;
BEGIN
    SELECT SALARIO INTO V_SALARIO FROM FUNCIONARIO_SEM3 WHERE NOME = 'JOÃO';
    IF V_SALARIO > 5000 THEN
        DBMS_OUTPUT.PUT_LINE('O SALÁRIO DE JOÃO É MAIOR QUE 5.000');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O SALÁRIO DE JOÃO NÃO É MAIOR QUE 5.000');
    END IF;
END;
/