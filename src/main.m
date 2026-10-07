% 5G mmWave Communication Simulation
% Portfolio reconstruction based on the original 2024 project material.
% Topics: QPSK, 28 GHz mmWave, FSPL, AWGN, demodulation and BER.

clear; clc; close all;

%% 1. Parameters
fs = 1e9;          % Sampling frequency (Hz)
fc = 28e9;         % Carrier frequency (Hz)
N = 1000;          % Number of generated symbols
d = 100;           % Propagation distance (m)
snrDb = 20;        % SNR (dB)
c = 3e8;           % Speed of light (m/s)
M = 4;             % QPSK

%% 2. Random symbols and QPSK modulation
% pskmod with M=4 expects symbols in the range 0...3.
txSymbols = randi([0 M-1], N, 1);
txBaseband = pskmod(txSymbols, M, pi/4);

%% 3. mmWave / carrier representation
% A real 28 GHz carrier cannot be directly time-resolved at fs = 1 GHz.
% Therefore BER processing is performed in complex baseband.
% The expression below is retained only as a conceptual carrier model.
t = (0:N-1).' / fs;
carrierPhase = exp(1j * 2*pi*fc*t);
conceptualMmWave = txBaseband .* carrierPhase;

%% 4. Wavelength and free-space path loss
lambda = c / fc;
fsplDb = 20*log10(d) + 20*log10(fc) + 20*log10(4*pi/c);
pathAmplitude = 10^(-fsplDb/20);

fprintf('Carrier frequency : %.2f GHz\n', fc/1e9);
fprintf('Wavelength        : %.4f m (%.2f mm)\n', lambda, lambda*1e3);
fprintf('Distance          : %.1f m\n', d);
fprintf('FSPL              : %.2f dB\n', fsplDb);

%% 5. Channel attenuation + AWGN
rxNoiseless = txBaseband * pathAmplitude;

% Add noise at the requested SNR without requiring awgn().
signalPower = mean(abs(rxNoiseless).^2);
noisePower = signalPower / (10^(snrDb/10));
noise = sqrt(noisePower/2) * ...
    (randn(size(rxNoiseless)) + 1j*randn(size(rxNoiseless)));
rxBaseband = rxNoiseless + noise;

%% 6. Receiver equalization and QPSK demodulation
rxEqualized = rxBaseband / pathAmplitude;
rxSymbols = pskdemod(rxEqualized, M, pi/4);

symbolErrors = sum(txSymbols ~= rxSymbols);
ser = symbolErrors / N;

% QPSK carries log2(M)=2 bits/symbol.
txBits = de2bi(txSymbols, log2(M), 'left-msb');
rxBits = de2bi(rxSymbols, log2(M), 'left-msb');
bitErrors = sum(txBits(:) ~= rxBits(:));
ber = bitErrors / numel(txBits);

fprintf('SNR               : %.1f dB\n', snrDb);
fprintf('Symbol errors     : %d / %d\n', symbolErrors, N);
fprintf('SER               : %.6f\n', ser);
fprintf('Bit errors        : %d / %d\n', bitErrors, numel(txBits));
fprintf('BER               : %.6f\n', ber);

%% 7. Visualization
figure;
plot(real(txBaseband(1:100)), 'LineWidth', 1);
grid on;
xlabel('Symbol Index');
ylabel('In-phase Amplitude');
title('QPSK Baseband Signal (First 100 Symbols)');

figure;
scatter(real(rxEqualized), imag(rxEqualized), 12, '.');
grid on;
axis equal;
xlabel('In-phase');
ylabel('Quadrature');
title(sprintf('Received QPSK Constellation, SNR = %.1f dB', snrDb));

figure;
plot(real(rxNoiseless(1:100)), 'LineWidth', 1);
hold on;
plot(real(rxBaseband(1:100)), 'LineWidth', 1);
grid on;
xlabel('Symbol Index');
ylabel('Amplitude');
legend('After FSPL', 'After FSPL + AWGN');
title('Channel Effect on Received Signal');
