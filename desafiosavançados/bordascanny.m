// Crie uma função que implemente a técnica de detecção de bordas Canny.

function bordas = canny(imagem)
    % Filtro de Sobel para detecção de bordas
    sobel_x = [-1 0 1; -2 0 2; -1 0 1];
    sobel_y = [-1 -2 -1; 0 0 0; 1 2 1];
    
    % Gradiente da imagem
    grad_x = conv2(imagem, sobel_x, 'same');
    grad_y = conv2(imagem, sobel_y, 'same');
    grad = sqrt(grad_x.^2 + grad_y.^2);
    theta = atan2(grad_y, grad_x);
    theta = theta * 180 / pi;
    theta(theta < 0) = theta(theta < 0) + 180;
    
    % Supressão de não-máximos
    bordas = zeros(size(imagem));
    for i = 2:size(imagem, 1)-1
        for j = 2:size(imagem, 2)-1
            if (theta(i,j) > 0 && theta(i,j) <= 45) || (theta(i,j) > 135 && theta(i,j) <= 180)
                if grad(i,j) >= grad(i-1,j) && grad(i,j) >= grad(i+1,j)
                    bordas(i,j) = grad(i,j);
                end
            elseif (theta(i,j) > 45 && theta(i,j) <= 90) || (theta(i,j) > 90 && theta(i,j) <= 135)
                if grad(i,j) >= grad(i,j-1) && grad(i,j) >= grad(i,j+1)
                    bordas(i,j) = grad(i,j);
                end
            end
        end
    end
    
    % Limiarização de histerese
    limiar1 = 0.1 * max(bordas(:));
    limiar2 = 0.2 * max(bordas(:));
    bordas(bordas < limiar1) = 0;
    bordas(bordas >= limiar2) = 1;
    for i = 2:size(imagem, 1)-1
        for j = 2:size(imagem, 2)-1
            if bordas(i,j) == 1
                if bordas(i-1,j-1) == 1 || bordas(i-1,j) == 1 || bordas(i-1,j+1) == 1 || ...
                        bordas(i,j-1) == 1 || bordas(i,j+1) == 1 || ...
                        bordas(i+1,j-1) == 1 || bordas(i+1,j) == 1 || bordas(i+1,j+1) == 1
                    bordas(i,j) = 1;
                else
                    bordas(i,j) = 0;
                end
            end
        end
    end
end
