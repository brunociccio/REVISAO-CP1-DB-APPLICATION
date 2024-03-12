/*16.Implemente um bloco PL/SQL que utilize um loop WHILE para exibir
os n�meros de Fibonacci at� um determinado limite*/

SET SERVEROUTPUT ON;

DECLARE
    V_LIMITE NUMBER := &LIMITE; -- Solicita ao usu�rio que insira o limite da sequ�ncia Fibonacci
    V_NUM_ANTERIOR NUMBER := 0; -- Inicializa o primeiro n�mero da sequ�ncia Fibonacci
    V_PROXIMO_NUM NUMBER := 1; -- Inicializa o segundo n�mero da sequ�ncia Fibonacci
    V_ATUAL NUMBER; -- Vari�vel para armazenar o n�mero atual da sequ�ncia
    
BEGIN
    -- Exibe os dois primeiros n�meros da sequ�ncia Fibonacci
    DBMS_OUTPUT.PUT_LINE(V_NUM_ANTERIOR);
    DBMS_OUTPUT.PUT_LINE(V_PROXIMO_NUM);
    
    -- Loop WHILE para calcular e exibir os pr�ximos n�meros da sequ�ncia Fibonacci at� atingir o limite
    WHILE V_PROXIMO_NUM <= V_LIMITE LOOP
        V_ATUAL := V_NUM_ANTERIOR + V_PROXIMO_NUM; -- Calcula o pr�ximo n�mero da sequ�ncia
        IF V_ATUAL <= V_LIMITE THEN
            DBMS_OUTPUT.PUT_LINE(V_ATUAL);
        END IF;
        V_NUM_ANTERIOR := V_PROXIMO_NUM; -- Atualiza o n�mero anterior para o pr�ximo n�mero
        V_PROXIMO_NUM := V_ATUAL; -- Atualiza o pr�ximo n�mero para o n�mero atual
    END LOOP;
END;
/
