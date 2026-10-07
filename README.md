[English](README.md) | [繁體中文](README_zh-TW.md)

# 5G mmWave Communication Simulation

> 2024 Tsinghua University × Microsoft Engage project portfolio  
> MATLAB-based study of 5G/mmWave communication, QPSK waveform generation, free-space path loss (FSPL), noise/channel effects, BER/SER evaluation, and 5G application scenarios.

## Project Overview

This repository reorganizes the technical work from my 2024 summer Engage project, **「5G未來科技之旅」**, into a portfolio-oriented format for engineering and graduate-school applications.

The project covers 1G-to-5G evolution, ITU 5G service categories (**eMBB, mMTC, URLLC**), and key technologies such as **millimeter-wave communication, MIMO, and beamforming**. The MATLAB implementation demonstrates QPSK modulation, 28 GHz carrier-related analysis, free-space path loss, AWGN channel effects, receiver processing, and BER/SER evaluation.

## Project Context

- Program: 2024 Engage summer training program
- University: Tsinghua University
- Technical theme: 5G future technologies and applications
- Main tool: MATLAB
- Focus: mmWave, QPSK, FSPL, AWGN, BER/SER
- Outcome: final presentation and technical documentation
- Recognition: Top Performer Award

## Technical Topics

| Area | Topics covered |
|---|---|
| 5G fundamentals | Evolution from 1G to 5G |
| 5G service categories | eMBB, mMTC, URLLC |
| Radio technologies | mmWave, MIMO, beamforming |
| Modulation | QPSK |
| Propagation | FSPL, wavelength |
| Channel effects | Attenuation and AWGN |
| Receiver processing | QPSK demodulation, BER/SER |
| Applications | IoT, autonomous driving, smart cities, AR/VR |

## Seven Signal-Processing Topics

1. Random data generation
2. QPSK modulation
3. 28 GHz mmWave carrier concept
4. Free-space path loss (FSPL)
5. AWGN channel modeling
6. QPSK demodulation
7. BER / SER performance evaluation

## MATLAB Simulation Flow

Random data → QPSK modulation → 28 GHz mmWave concept → FSPL attenuation → AWGN → receiver equalization / demodulation → BER/SER

### Example Parameters

- Sampling frequency: 1 GHz
- Carrier frequency: 28 GHz
- Number of symbols: 1000
- Propagation distance: 100 m
- SNR: 20 dB
- Modulation: QPSK (M = 4)

> Engineering note: because a 1 GHz sampling rate cannot directly time-resolve a 28 GHz carrier, BER/SER processing in `src/main.m` is performed in complex baseband. The 28 GHz value is retained for wavelength/FSPL analysis and as the physical carrier parameter.

## Source Code

The main MATLAB script is [`src/main.m`](src/main.m). It performs:

- random QPSK symbol generation
- QPSK modulation
- 28 GHz wavelength calculation
- free-space path-loss calculation
- path attenuation
- complex AWGN generation
- receiver equalization
- QPSK demodulation
- SER and BER measurement
- waveform and constellation visualization

## 5G Concepts Studied

### eMBB — Enhanced Mobile Broadband
High-data-rate services such as HD video, cloud services, and bandwidth-intensive mobile applications.

### mMTC — Massive Machine Type Communications
Large-scale connectivity for IoT and massive numbers of connected devices.

### URLLC — Ultra-Reliable Low-Latency Communications
Very low latency and high reliability for industrial control and vehicle-related communication scenarios.

## mmWave, MIMO and Beamforming

- **mmWave:** high-frequency wireless communication with large available bandwidth.
- **MIMO:** multiple-antenna transmission for capacity and performance improvement.
- **Beamforming:** spatially concentrates transmitted energy toward a receiver.

## Application Scenarios

- Internet of Things (IoT)
- Autonomous driving
- Smart cities
- Industrial automation
- AR / VR
- High-speed mobile broadband

The original project also explored combining **AI-based obstacle analysis**, **5G low-latency communication**, and **vehicle safety mechanisms** as an intelligent-transportation concept.

## Project Development Process

1. Topic selection and 5G background research
2. Study of 1G–5G evolution and 5G applications
3. Technical review of eMBB, mMTC, URLLC and MIMO
4. MATLAB-based electromagnetic-wave / communication simulation
5. Final report and presentation

## Recognition

The 2024 Engage project was completed successfully, and I received a **Top Performer Award**.

---

**Author:** 洪鏮展  
**Background:** Electrical Engineering, Fu Jen Catholic University  
**Project area:** 5G / mmWave / MATLAB / Communication Systems