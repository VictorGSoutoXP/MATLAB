// Criar uma matriz aleatória e encontrar todos os elementos pares na matriz.

matriz = randi(10, 4, 5); % cria uma matriz 4x5 com números aleatórios de 1 a 10
pares = matriz(mod(matriz, 2) == 0); % encontra todos os elementos pares na matriz
