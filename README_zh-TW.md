[English](README.md) | **繁體中文**

# 5G 毫米波通訊系統 MATLAB 模擬

> 2024 清華大學 × Microsoft Engage 專案作品集  
> 以 MATLAB 整理與重建 5G / mmWave 通訊專題，涵蓋 QPSK、FSPL、AWGN、解調與 BER / SER 效能分析。

## 專案簡介

本 Repository 將我在 2024 年暑期 Engage 專案 **「5G未來科技之旅」** 的技術內容重新整理成適合履歷、工程作品集與研究所申請的形式。

專案內容包含 1G 至 5G 通訊技術演進、ITU 5G 三大服務類型 **eMBB、mMTC、URLLC**，以及 **毫米波（mmWave）、MIMO、Beamforming** 等關鍵技術；同時透過 MATLAB 建立簡化的 5G 毫米波數位通訊鏈路，用來展示 QPSK 調變、28 GHz 載波條件、自由空間路徑損耗、通道雜訊與接收端錯誤率分析。

## 專案背景

- 計畫：2024 Engage 暑期培訓專案
- 學校：清華大學
- 主題：5G 未來科技與應用
- 主要工具：MATLAB
- 技術重點：mmWave、QPSK、FSPL、AWGN、BER / SER
- 專案成果：期末簡報與技術文件
- 獎項：Top Performer Award

## 技術主題

| 類別 | 內容 |
|---|---|
| 5G 基礎 | 1G 至 5G 通訊技術演進 |
| 5G 服務類型 | eMBB、mMTC、URLLC |
| 無線技術 | mmWave、MIMO、Beamforming |
| 數位調變 | QPSK |
| 傳播模型 | FSPL、波長 |
| 通道模型 | 路徑衰減、AWGN |
| 接收端處理 | QPSK 解調、BER / SER |
| 應用場景 | IoT、自動駕駛、智慧城市、AR / VR |

## 七大訊號處理議題

1. **隨機資料產生**：建立待傳輸的數位資料。
2. **QPSK 調變**：將數位資料映射為 QPSK symbol。
3. **28 GHz 毫米波載波概念**：以 28 GHz 作為 5G 高頻載波條件。
4. **自由空間路徑損耗（FSPL）**：估算訊號在自由空間傳播後的衰減。
5. **AWGN 通道**：加入高斯白雜訊模擬通道干擾。
6. **QPSK 解調**：在接收端還原傳輸 symbol / bit。
7. **BER / SER 分析**：量化通訊鏈路錯誤率與傳輸品質。

## MATLAB 模擬流程

隨機資料 → QPSK 調變 → 28 GHz mmWave 概念 → FSPL 衰減 → AWGN → 接收端等化 / 解調 → BER/SER

## 代表性模擬參數

- 取樣頻率：1 GHz
- 載波頻率：28 GHz
- Symbol 數量：1000
- 傳播距離：100 m
- SNR：20 dB
- 調變：QPSK（M = 4）

### 工程處理說明

原始專案範例同時使用 1 GHz 取樣頻率與 28 GHz 載波。由於 1 GHz 取樣率無法直接在時域完整解析 28 GHz 載波，因此目前 `src/main.m` 將 **BER / SER 通訊鏈路運算放在 complex baseband 執行**，並保留 28 GHz 作為波長、FSPL 與毫米波物理條件的分析參數。

## 主程式：src/main.m

主程式位於 [`src/main.m`](src/main.m)，主要執行：

- 產生隨機 QPSK symbols
- QPSK 調變
- 計算 28 GHz 波長
- 計算 FSPL
- 模擬傳播路徑衰減
- 建立 complex AWGN
- 接收端等化
- QPSK 解調
- 計算 SER 與 BER
- 繪製 QPSK 波形與接收星座圖
- 比較 FSPL 與 AWGN 對接收訊號的影響

## 5G 三大服務類型

### eMBB — Enhanced Mobile Broadband
強調高速率與大頻寬，適合高畫質影音、雲端服務與高流量行動應用。

### mMTC — Massive Machine Type Communications
著重大量裝置同時連線，適合 IoT 與大規模感測裝置。

### URLLC — Ultra-Reliable Low-Latency Communications
強調高可靠度與低延遲，可應用於工業控制與車聯網等場景。

## mmWave、MIMO 與 Beamforming

- **mmWave（毫米波）**：利用較高頻率取得更大的可用頻寬。
- **MIMO**：透過多天線技術提升容量與傳輸效能。
- **Beamforming**：將能量朝特定空間方向集中，提高鏈路效率與覆蓋能力。

## 應用場景

- 物聯網（IoT）
- 自動駕駛
- 智慧城市
- 工業自動化
- AR / VR
- 高速行動寬頻

原始專案後段亦延伸討論 **AI 障礙物分析、5G 低延遲通訊與車輛安全機制** 的智慧交通概念。

## 專案開發流程

1. 發想主題與蒐集 5G 技術資料
2. 整理 1G 至 5G 通訊演進與應用
3. 研究 eMBB、mMTC、URLLC 與 MIMO
4. 使用 MATLAB 進行電磁波 / 通訊鏈路模擬
5. 完成期末報告與成果發表

## 專案成果與獎項

完成 2024 Engage 專案訓練與成果發表，並獲得 **Top Performer Award（傑出學員獎）**。

---

**作者：** 洪鏮展  
**背景：** 輔仁大學電機工程學系  
**專案領域：** 5G / mmWave / MATLAB / Communication Systems