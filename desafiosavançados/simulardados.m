// Crie uma função que simule o jogo de dados em que dois dados são jogados. A função deve receber como entrada o número de jogadas a serem realizadas e retornar um vetor com o número de ocorrências de cada resultado possível.  

function resultados = simula_jogo_dados(n_jogadas)
    % Inicializa o vetor de resultados com zeros
    resultados = zeros(1, 11);
    
    % Simula as jogadas e atualiza os resultados
    for i = 1:n_jogadas
        d1 = randi(6);
        d2 = randi(6);
        soma = d1 + d2;
        resultados(soma-2) = resultados(soma-2) + 1;
    end
end
