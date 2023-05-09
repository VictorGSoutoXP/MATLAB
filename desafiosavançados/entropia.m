// Crie uma função que calcule a entropia de uma imagem em escala de cinza.

function entropia = calc_entropia(imagem)
    % Histograma da imagem
    histograma = imhist(imagem);
    p = histograma / sum(histograma);
    
    % Cálculo da entropia
    entropia = -sum(p(p ~= 0) .* log2(p(p ~= 0)));
end
