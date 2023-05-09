// Gerar um gráfico de dispersão de um conjunto de dados com três dimensões.

x = rand(100, 1);
y = rand(100, 1);
z = rand(100, 1) * 10;
scatter3(x, y, z, 'filled');
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Gráfico de Dispersão em 3D');
