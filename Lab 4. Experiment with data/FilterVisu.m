function [magnitude, phase, frequency] = FilterVisu(nameOfFilter, b, a, numberOfPoints, numberOfFrequency)
% To plot pole and zeros (input numerator first, then denominator)
subplot(311);
zplane(b,a)
title("Poles and zeros of the " +nameOfFilter)
hold on

% To give magnitude & phase of frequency response & frequency vector
[h,w] = freqz(b, a, numberOfPoints, numberOfFrequency);
magnitude = abs(h);
phase = angle(h);
frequency = w;

subplot(312);
plot(frequency, magnitude);
grid on;
xlabel("Frequency (Hz)");
ylabel("Magnitude spectrum");
title("The magnitude spectrum of the " +nameOfFilter);
legend("The magnitude spectrum of the " +nameOfFilter);
hold on

subplot(313);
plot(frequency, phase);
grid on;
xlabel("Frequency (Hz)");
ylabel("Phase spectrum");
title("The phase spectrum of the " +nameOfFilter);
legend("The phase spectrum of the " +nameOfFilter);
hold off

