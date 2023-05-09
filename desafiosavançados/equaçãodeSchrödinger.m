// Implementar a equação de Schrödinger unidimensional para uma partícula livre:

L = 10; % comprimento da caixa quântica
N = 1000; % número de pontos na grade
dx = L/N; % tamanho do passo
x = linspace(0, L, N); % vetor de posição
hbar = 1.0545718e-34; % constante de Planck reduzida
m = 9.10938356e-31; % massa do elétron
t = 0; % tempo inicial
dt = 1e-18; % tamanho do passo de tempo
psi = exp(-(x-L/2).^2/(2*(L/10)^2)).*exp(1i*m*25*x/hbar); % condição inicial
V = 0; % potencial zero (partícula livre)
for n = 1:1000
    psi = psi.*exp(-1i*V*dt/hbar); % evolução temporal
    psi = ifft(fft(psi).*exp(-1i*hbar^2*n^2*pi^2/(2*m*L^2)*dt)); % evolução espacial
    psi = psi.*exp(-1i*V*dt/hbar); % evolução temporal
    t = t + dt; % atualização do tempo
end
plot(x, abs(psi).^2); % plotagem da densidade de probabilidade
