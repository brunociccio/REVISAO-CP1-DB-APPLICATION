/* LISTA DE EXERCÍCIOS - REVISÃO CP 1

4. Crie uma tabela chamada "Funcionarios" com duas colunas "Nome e
Salario", inclua 5 registros. Escreva um bloco PL/SQL que verifique se o
salário de um funcionário é maior que 5.000. Se for, exiba uma mensagem
utilizando dbms_output.
*/

SET SERVEROUTPUT ON;

-- Deletando tabela se já existir
DROP TABLE FUNCIONARIO_SEM3;

-- Criando a tabela FUNCIONARIO_SEM3
CREATE TABLE FUNCIONARIO_SEM3 (
    NOME VARCHAR2(100),
    SALARIO NUMBER
);

-- Inserindo registros na tabela FUNCIONARIO_SEM3
INSERT INTO FUNCIONARIO_SEM3 (NOME, SALARIO) VALUES ('JOÃO', 4500);
INSERT INTO FUNCIONARIO_SEM3 (NOME, SALARIO) VALUES ('PEDRO', 7500);
INSERT INTO FUNCIONARIO_SEM3 (NOME, SALARIO) VALUES ('CLAUDIA', 5500);
INSERT INTO FUNCIONARIO_SEM3 (NOME, SALARIO) VALUES ('FERNANDA', 2000);
INSERT INTO FUNCIONARIO_SEM3 (NOME, SALARIO) VALUES ('BRUNO', 8800);

-- Exibindo os registros da tabela FUNCIONARIO_SEM3
SELECT * FROM FUNCIONARIO_SEM3;

-- Bloco PL/SQL para verificar o salário do funcionário 'JOÃO'
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

