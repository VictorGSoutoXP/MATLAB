// Implemente um algoritmo de detecção de bordas baseado no operador de Sobel.
function bordas = sobel(imagem)
    % Filtro de Sobel para detecção de bordas
    filtro_x = [-1 0 1; -2 0 2; -1 0 1];
    filtro_y = [-1 -2 -1; 0 0 0; 1 2 1];
    
    % Convolução da imagem com os filtros de Sobel
    gradiente_x = conv2(double(imagem), filtro_x, 'same');
    gradiente_y = conv2(double(imagem), filtro_y, 'same');
    
    % Cálculo do módulo do gradiente
    bordas = sqrt(gradiente_x.^2 + gradiente_y.^2);
    
    % Limiarização das bordas
    bordas = bordas > 50;
end
