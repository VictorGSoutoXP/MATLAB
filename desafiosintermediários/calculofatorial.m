// Criar um programa que solicita um número inteiro do usuário e calcula seu fatorial.
n = input("Digite um número inteiro: ");
fatorial = 1;
for i = 1:n
    fatorial = fatorial * i;
end
fprintf("%d! = %d\n", n, fatorial);
