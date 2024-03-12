/*16.Implemente um bloco PL/SQL que utilize um loop WHILE para exibir
os números de Fibonacci até um determinado limite*/

SET SERVEROUTPUT ON;

DECLARE
    V_LIMITE NUMBER := &LIMITE; -- Solicita ao usuário que insira o limite da sequência Fibonacci
    V_NUM_ANTERIOR NUMBER := 0; -- Inicializa o primeiro número da sequência Fibonacci
    V_PROXIMO_NUM NUMBER := 1; -- Inicializa o segundo número da sequência Fibonacci
    V_ATUAL NUMBER; -- Variável para armazenar o número atual da sequência
    
BEGIN
    -- Exibe os dois primeiros números da sequência Fibonacci
    DBMS_OUTPUT.PUT_LINE(V_NUM_ANTERIOR);
    DBMS_OUTPUT.PUT_LINE(V_PROXIMO_NUM);
    
    -- Loop WHILE para calcular e exibir os próximos números da sequência Fibonacci até atingir o limite
    WHILE V_PROXIMO_NUM <= V_LIMITE LOOP
        V_ATUAL := V_NUM_ANTERIOR + V_PROXIMO_NUM; -- Calcula o próximo número da sequência
        IF V_ATUAL <= V_LIMITE THEN
            DBMS_OUTPUT.PUT_LINE(V_ATUAL);
        END IF;
        V_NUM_ANTERIOR := V_PROXIMO_NUM; -- Atualiza o número anterior para o próximo número
        V_PROXIMO_NUM := V_ATUAL; -- Atualiza o próximo número para o número atual
    END LOOP;
END;
/
