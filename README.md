# 5G mmWave Communication Simulation

> 2024 Tsinghua University × Microsoft Engage project portfolio  
> MATLAB-based study of 5G/mmWave communication, QPSK waveform generation, free-space path loss (FSPL), noise/channel effects, BER observation, and 5G application scenarios.

## Project Overview

This repository reorganizes the technical work from my 2024 summer Engage project, **「5G未來科技之旅」**, into a portfolio-oriented format for engineering and graduate-school applications.

The project covered the evolution from 1G to 5G, the major 5G service categories defined by ITU (**eMBB, mMTC, URLLC**), and key technologies such as **millimeter-wave communication, MIMO, and beamforming**. The project also included a MATLAB example for generating a 28 GHz QPSK-modulated mmWave signal, estimating free-space path loss, adding AWGN noise, demodulating the received signal, and evaluating transmission errors.

## Project Context

- Program: 2024 Engage summer training program
- University: Tsinghua University
- Technical theme: 5G future technologies and applications
- Main tool: MATLAB
- Focus: mmWave communication, QPSK modulation, FSPL, noise/channel effects, 5G use cases
- Project outcome: final presentation and project documentation
- Recognition: Top Performer Award

## Technical Topics

| Area | Topics covered |
|---|---|
| 5G fundamentals | Evolution from 1G to 5G |
| 5G service categories | eMBB, mMTC, URLLC |
| Radio technologies | mmWave, MIMO, beamforming |
| Modulation | QPSK |
| Propagation | Free-space path loss (FSPL), wavelength |
| Channel effects | Attenuation and AWGN |
| Receiver processing | QPSK demodulation and error checking |
| Applications | IoT, autonomous driving, smart cities, AR/VR |

## MATLAB Simulation Flow

The MATLAB example in the project follows the communication chain below:

```text
Random bit generation
        ↓
QPSK modulation
        ↓
28 GHz carrier / mmWave signal generation
        ↓
Free-space path-loss attenuation
        ↓
AWGN noise
        ↓
Receiver down-conversion / QPSK demodulation
        ↓
Bit-error evaluation
```

### 1. Example Parameters

The project example used parameters such as:

```matlab
fs = 1e9;      % sampling frequency: 1 GHz
fc = 28e9;     % carrier frequency: 28 GHz
N  = 1000;     % signal length
d  = 100;      % propagation distance: 100 m
snr = 20;      % signal-to-noise ratio: 20 dB
```

### 2. QPSK Signal Generation

Random information symbols are generated and mapped using QPSK:

```matlab
data = randi([0 1], 1, N);
modData = pskmod(data, 4);
t = (0:N-1) / fs;

mmWaveSignal = real(modData .* exp(1j * 2 * pi * fc * t));
```

> Note: this repository is a portfolio reconstruction of the original study material. The MATLAB files added here should stay aligned with the original project logic and documented parameters.

### 3. Free-Space Path Loss

The project used the free-space path-loss relationship:

```text
FSPL = 20 log10(d) + 20 log10(f) + 20 log10(4π/c)
```

where:

- `d` = propagation distance
- `f` = carrier frequency
- `c` = speed of light

The corresponding wavelength is:

```text
λ = c / f
```

For a 28 GHz carrier, the wavelength is on the order of millimeters, which is why 5G high-frequency systems are commonly discussed in the context of **millimeter-wave communication**.

### 4. Channel Attenuation and Noise

The project example applies path-loss attenuation and then adds Gaussian noise:

```matlab
receivedSignal = mmWaveSignal / (10^(fspl/20));
receivedSignalNoisy = awgn(receivedSignal, snr, 'measured');
```

This demonstrates, at a simplified level, how propagation loss and channel noise affect a high-frequency communication waveform.

### 5. Receiver and Error Evaluation

The received waveform is processed and demodulated, after which the transmitted and recovered data can be compared to estimate transmission errors.

```matlab
rxData = pskdemod(receivedSignalNoisy .* exp(-1j * 2 * pi * fc * t), 4);
[numErrors, ber] = biterr(data, rxData);

disp(['Bit Error Rate: ' num2str(ber)]);
```

## 5G Concepts Studied

### eMBB — Enhanced Mobile Broadband

Designed for high data-rate applications such as high-resolution video, cloud services, and bandwidth-intensive mobile experiences.

### mMTC — Massive Machine Type Communications

Targets large-scale device connectivity, especially IoT scenarios with many simultaneously connected devices.

### URLLC — Ultra-Reliable Low-Latency Communications

Targets applications requiring very low latency and high reliability, such as industrial control and vehicle-related communication scenarios.

## mmWave, MIMO and Beamforming

The project also reviewed key enabling technologies for 5G:

- **mmWave:** provides access to large bandwidths at high carrier frequencies.
- **MIMO:** uses multiple antennas to improve capacity and transmission performance.
- **Beamforming:** concentrates transmitted energy spatially toward a receiver to improve link efficiency and coverage.

## Application Scenarios

The project connected 5G communication concepts to several practical areas:

- Internet of Things (IoT)
- Autonomous driving
- Smart cities
- Industrial automation
- AR / VR
- High-speed mobile broadband

A later project concept also explored combining **AI-based obstacle analysis**, **5G low-latency communication**, and **vehicle safety mechanisms** as an intelligent transportation application scenario.

## Project Development Process

The work was organized as a multi-week project:

1. Topic selection and 5G background research
2. Study of 1G–5G evolution and 5G applications
3. Technical review of eMBB, mMTC, URLLC and MIMO
4. MATLAB-based electromagnetic-wave / communication simulation
5. Final report and presentation

## What I Learned

Through this project, I strengthened my understanding of:

- wireless communication fundamentals
- high-frequency propagation and path loss
- QPSK modulation/demodulation
- MATLAB-based signal simulation
- 5G system concepts and application scenarios
- technical documentation and presentation
- interdisciplinary teamwork and project communication

## Repository Structure

```text
5G-mmWave-Communication-Simulation/
├── README.md
├── src/            # MATLAB scripts
├── results/        # simulation plots / outputs
├── docs/           # project documentation
└── presentation/   # presentation material
```

## Portfolio Notes

This repository is intended to present an academic/engineering project in a format suitable for:

- resume portfolio links
- graduate-school applications
- communications / RF / signal-processing roles
- MATLAB / engineering project demonstrations

## Recognition

The 2024 Engage project was completed successfully, and I received a **Top Performer Award** in the program.

---

**Author:** 洪鏮展  
**Background:** Electrical Engineering, Fu Jen Catholic University  
**Project area:** 5G / mmWave / MATLAB / Communication Systems
