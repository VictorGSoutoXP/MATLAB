// Implemente um algoritmo de suavização de imagens baseado no filtro de média móvel.

function imagem_suavizada = filtro_media(imagem, tamanho_filtro)
    % Tamanho do filtro (deve ser ímpar)
    if mod(tamanho_filtro, 2) == 0
        tamanho_filtro = tamanho_filtro + 1;
    end
    
    % Filtro de média móvel
    filtro = ones(tamanho_filtro) / tamanho_filtro^2;
    
    % Convolução da imagem com o filtro
    imagem_suavizada = conv2(imagem, filtro, 'same');
end
