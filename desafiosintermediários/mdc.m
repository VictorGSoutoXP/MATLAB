// Criar um programa que solicita dois números do usuário e encontra o máximo divisor comum (MDC) entre eles.
a = input("Digite o primeiro número: ");
b = input("Digite o segundo número: ");
while b ~= 0
    resto = mod(a, b);
    a = b;
    b = resto;
end
fprintf("MDC: %d\n", a);
