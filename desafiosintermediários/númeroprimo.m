// Criar uma função que verifica se um número é primo.

function resultado = eh_primo(num)
    if num <= 1
        resultado = false;
        return;
    end
    for i = 2:sqrt(num)
        if mod(num, i) == 0
            resultado = false;
            return;
        end
    end
    resultado = true;
end

// Para usar a função:

resultado = eh_primo(17); % chama a função para verificar se o número 17 é primo
