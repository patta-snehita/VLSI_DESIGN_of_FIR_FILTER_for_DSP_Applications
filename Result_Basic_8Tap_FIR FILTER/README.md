# 8-Tap FIR Filter Design Using Verilog HDL

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![DSP](https://img.shields.io/badge/Domain-DSP-green)
![Vivado](https://img.shields.io/badge/Tool-Vivado-red)

## 📌 Overview

This project implements an **8-Tap Finite Impulse Response (FIR) Filter** using Verilog HDL. The filter processes incoming digital samples through a delay-line architecture, multipliers, and an adder tree to generate a filtered output signal.

The design serves as a baseline FIR architecture for future optimizations such as **Symmetric FIR, Pipelining, Carry Save Adders (CSA), and Parallel Processing**.

---

## ⚙️ FIR Equation

```text
y[n] = Σ h(k)x[n-k]
```

### Coefficients

| h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 |
| -- | -- | -- | -- | -- | -- | -- | -- |
| 2  | 2  | 2  | 3  | 4  | 5  | 6  | 7  |

---

## 🏗️ Architecture

```text
Input
  ↓
Delay Registers
  ↓
Multipliers
  ↓
Adder Tree
  ↓
Output
```

---

## 📊 Hardware Resources

| Component       | Count |
| --------------- | ----- |
| Delay Registers | 8     |
| Multipliers     | 8     |
| Adders          | 7     |

---

## 🧪 Verification

✔ Functional simulation completed in Vivado

✔ Delay-line operation verified

✔ FIR output validated through manual calculations

✔ Reset functionality verified

---

## 🚀 Future Work

* Symmetric FIR Optimization
* Pipelined FIR Architecture
* Carry Save Adder (CSA) Integration
* Parallel Processing Implementation

---

## 🛠️ Tools Used

* Verilog HDL
* Xilinx Vivado
* RTL Design & Simulation

