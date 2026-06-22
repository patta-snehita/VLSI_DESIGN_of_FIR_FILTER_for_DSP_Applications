# 🚀 16-Tap Pipelined Symmetric FIR Filter

### Extending the 8-Tap Architecture for Better Understanding of FIR Optimization

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![DSP](https://img.shields.io/badge/Domain-DSP-green)
![Pipeline](https://img.shields.io/badge/Optimization-Pipelining-orange)
![RTL](https://img.shields.io/badge/Design-RTL-red)
![Vivado](https://img.shields.io/badge/Tool-Vivado-purple)

---

## 📌 Project Overview

This project is an extension of my previously implemented **8-Tap Pipelined Symmetric FIR Filter**.

The primary objective was to scale the design from **8 taps to 16 taps** and study more clearly how **Symmetry** and **Pipelining** impact hardware architecture, data flow, throughput, and scalability.

The design uses coefficient symmetry to reduce multiplier requirements and pipeline stages to improve timing performance while maintaining the same filtering functionality.

---

## 📈 Design Evolution

```text
Basic FIR
    ↓
Symmetric FIR
    ↓
Pipelined Symmetric FIR
    ↓
16-Tap Pipelined Symmetric FIR
```

---

## 📊 Comparison

| Feature | 8-Tap Version | 16-Tap Version |
|----------|----------|----------|
| FIR Order | 8-Tap | 16-Tap |
| Multipliers | 4 | 8 |
| Symmetry | ✅ | ✅ |
| Pipelining | ✅ | ✅ |
| Throughput | High | Higher |
| Scalability | Moderate | Better |

---

## 🏗️ Architecture

```text
Input Samples
      ↓
16-Stage Delay Line
      ↓
Symmetric Pair Addition
      ↓
Pipeline Registers
      ↓
Multiplication Stage
      ↓
Pipeline Registers
      ↓
Adder Tree
      ↓
Filtered Output
```

---

## 🧪 Functional Verification

The design was simulated and verified using Xilinx Vivado.

✅ Delay Line Operation Verified

✅ Symmetric Pairing Verified

✅ Pipeline Stages Verified

✅ FIR Output Verified

✅ RTL Synthesizable

---

## 📷 Simulation Results

### Waveform

(Add waveform screenshot here)

### TCL Console Output

(Add simulation output screenshot here)

---

## 🚀 Future Work

The current implementation focuses on understanding FIR optimization through:

✅ Symmetry

✅ Pipelining

### Next Phase

```text
16-Tap Pipelined Symmetric FIR
            ↓
16-Tap CSA-Based FIR
            ↓
Parallel Processing Techniques
            ↓
High-Speed Low-Power FIR Architecture
```

### Planned Enhancements

- Carry Save Adder (CSA) based accumulation tree
- Parallel Processing for higher throughput
- Timing and resource utilization comparison
- Low-power FIR architecture optimization
- FPGA-oriented DSP implementation

### Goal

To design a **High-Speed Low-Power FIR Filter** by combining:

```text
Symmetry
    +
Pipelining
    +
CSA
    +
Parallel Processing
```

for efficient DSP and VLSI applications.

---

## 🛠️ Tools Used

- Verilog HDL
- Xilinx Vivado
- RTL Design Methodology

---

## 👩‍💻 Author

**Patta Snehita**  
B.Tech Electrical Engineering  
National Institute of Technology Durgapur

📌 Interests: RTL Design • FPGA Development • DSP Hardware • Verilog HDL • VLSI Design
