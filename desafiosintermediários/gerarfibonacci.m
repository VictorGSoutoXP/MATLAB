// Gerar uma sequência de Fibonacci até o número 100.
a = 0;
b = 1;
while b <= 100
    fprintf("%d\n", b);
    c = a + b;
    a = b;
    b = c;
end
