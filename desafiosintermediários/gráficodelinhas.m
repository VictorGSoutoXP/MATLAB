// Criar um gráfico de linhas com duas séries de dados, cada uma com uma cor diferente.

x = linspace(0, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);
plot(x, y1, 'r', x, y2, 'b');
legend('sin(x)', 'cos(x)');
xlabel('x');
ylabel('y');
title('Gráfico de linhas');
