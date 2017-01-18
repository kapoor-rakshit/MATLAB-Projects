N = 1000;
fc = 30;
fs = 100*fc;

t = 0:1/fs:(N-1)*1/fs;
fm = 5;
m = cos(2*pi*fm*t);
c = cos(2*pi*fc*t);
Kf = 0.05;
phi = 2*pi*Kf*cumsum(m);
s = exp(1i*(2*pi*fc*t+phi));
theta = zeros(1,length(s));
vco = zeros(1,length(s));
e = zeros(1,length(s));
pdo = zeros(1,length(s));
vco(1) = 0;
theta(1) = 30;
Kp = 0.15;
Ki = 0.10;
e(1) = 0;

for n = 2:length(s)
    vco(n) = conj(exp(1i*(2*pi*n*fc/fs+theta(n-1))));
    pdo(n) = imag(vco(n)*s(n));
    e(n) = e(n-1) + (Kp+Ki)*pdo(n) - Ki*pdo(n-1);
    theta(n) = theta(n-1) + e(n);
end

subplot(511);
plot(t,s);
title('Modulated Signal');
subplot(512);
plot(t,theta);
title('theta');
subplot(513);
plot(t,e);
title('e');
subplot(514);
plot(t,vco);
title('vco');
subplot(515);
plot(t,pdo);
title('pdo');