// Criar uma matriz aleatória e imprimir a soma de cada linha e cada coluna.
matriz = randi(10, 4, 5); % cria uma matriz 4x5 com números aleatórios de 1 a 10
soma_linhas = sum(matriz, 2); % calcula a soma de cada linha da matriz
soma_colunas = sum(matriz, 1); % calcula a soma de cada coluna da matriz
fprintf("Soma das linhas: \n");
disp(soma_linhas');
fprintf("Soma das colunas: \n");
disp(soma_colunas);
