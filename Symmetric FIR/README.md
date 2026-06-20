# 🎛️ Symmetric 8-Tap FIR Filter Design Using Verilog HDL

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![DSP](https://img.shields.io/badge/Domain-DSP-green)
![Vivado](https://img.shields.io/badge/Tool-Vivado-red)

## 📌 Overview

This project implements an **8-Tap Symmetric FIR Filter** using Verilog HDL. By exploiting coefficient symmetry, the number of multipliers is reduced from **8 to 4**, resulting in lower hardware complexity and power consumption while maintaining identical filter functionality.

---

## ⚙️ Symmetric Coefficients

| h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 |
| -- | -- | -- | -- | -- | -- | -- | -- |
| 1  | 2  | 3  | 4  | 4  | 3  | 2  | 1  |

Since:

```text
h0 = h7
h1 = h6
h2 = h5
h3 = h4
```

the FIR equation can be simplified as:

```text
y[n] =
h0(d0+d7)
+h1(d1+d6)
+h2(d2+d5)
+h3(d3+d4)
```

---

## 🏗️ Architecture

```text
Input
  ↓
Delay Registers
  ↓
Pair Adders
(d0+d7)
(d1+d6)
(d2+d5)
(d3+d4)
  ↓
4 Multipliers
  ↓
Adder Tree
  ↓
Output
```

---

## 📊 Optimization Summary

| Resource        | Basic FIR | Symmetric FIR |
| --------------- | --------- | ------------- |
| Delay Registers | 8         | 8             |
| Multipliers     | 8         | 4             |
| Adders          | 7         | 7             |
| Area            | Higher    | Lower         |
| Power           | Higher    | Lower         |

---

## 🧪 Verification

✔ Functional simulation completed in Vivado

✔ Symmetric architecture verified

✔ Output matched equivalent conventional FIR filter

✔ Multiplier count reduced by 50%

---

## 🚀 Future Work

* Pipelined Symmetric FIR
* Carry Save Adder (CSA) Tree
* Low-Power FIR Optimization
* Parallel Processing Architecture

---

## 🛠️ Tools Used

* Verilog HDL
* Xilinx Vivado
* RTL Design & Simulation
* Digital Signal Processing (DSP)
