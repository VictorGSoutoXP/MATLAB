// Implementar a transformada de Fourier em um sinal:

Fs = 100; % frequência de amostragem
t = 0:1/Fs:1-1/Fs; % vetor de tempo
f = 5; % frequência do sinal
sinal = sin(2*pi*f*t); % sinal senoidal
transformada = fft(sinal); % transformada de Fourier
frequencias = Fs*(0:length(sinal)-1)/length(sinal); % vetor de frequências
plot(frequencias, abs(transformada)); % plotagem do espectro de frequências
