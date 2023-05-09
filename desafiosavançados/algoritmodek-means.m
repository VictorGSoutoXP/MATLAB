// Implemente um algoritmo de clusterização k-means para separar um conjunto de dados em k grupos.

% Geração de dados aleatórios
dados = [randn(100, 2) + ones(100, 2);         randn(100, 2) - ones(100, 2)];

k = 2; % Número de clusters

% Inicialização dos centróides
indices_aleatorios = randperm(size(dados, 1));
centroides = dados(indices_aleatorios(1:k), :);

% Iteração do algoritmo
while true
    % Atribuição dos pontos aos clusters mais próximos
    distancias = pdist2(dados, centroides);
    [~, indices_cluster] = min(distancias, [], 2);
    
    % Atualização dos centróides
    novos_centroides = zeros(size(centroides));
    for i = 1:k
        novos_centroides(i, :) = mean(dados(indices_cluster == i, :), 1);
    end
    
    % Critério de convergência
    if isequal(novos_centroides, centroides)
        break;
    end
    
    centroides = novos_centroides;
end

% Plotagem dos resultados
scatter(dados(:, 1), dados(:, 2), 10, indices_cluster, 'filled');
title('K-means clustering');
