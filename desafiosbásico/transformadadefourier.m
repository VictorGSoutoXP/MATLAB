t = linspace(0,1,1000);
f = 10;
sinal = sin(2*pi*f*t);
sinal_fft = fft(sinal);
plot(abs(sinal_fft));
