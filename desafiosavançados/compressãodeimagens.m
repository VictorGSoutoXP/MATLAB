// Implemente um algoritmo para a compressão de imagens utilizando a técnica de codificação por blocos. 

% Leitura da imagem
imagem_original = imread('imagem.jpg');

% Divisão da imagem em blocos
tamanho_bloco = 8;
blocos = im2col(imagem_original, [tamanho_bloco tamanho_bloco], 'distinct');

% Codificação dos blocos
blocos_codificados = dct2(blocos);

% Limiarização dos coeficientes de alta frequência
limiar = 50;
blocos_codificados(abs(blocos_codificados) < limiar) = 0;

% Decodificação dos blocos
blocos_decodificados = idct2(blocos_codificados);

% Reconstrução da imagem
imagem_compressa = col2im(blocos_decodificados, [tamanho_bloco tamanho_bloco], size(imagem_original), 'distinct');
imagem_compressa = uint8(imagem_compressa);

% Plotagem dos resultados
subplot(1, 2, 1);
imshow(imagem_original);
title('Imagem original');

subplot(1, 2, 2);
imshow(imagem_compressa);
title('Imagem comprimida');
