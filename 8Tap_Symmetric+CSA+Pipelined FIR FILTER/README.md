# 🚀 8-Tap FIR Filter Optimization Journey

### From Basic FIR → Symmetric FIR → Pipelined FIR → CSA-Based FIR

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![DSP](https://img.shields.io/badge/Domain-DSP-green)
![Pipeline](https://img.shields.io/badge/Optimization-Pipelining-orange)
![CSA](https://img.shields.io/badge/Architecture-CSA-red)
![Vivado](https://img.shields.io/badge/Tool-Vivado-purple)

---

## 📌 Project Overview

This project demonstrates the step-by-step optimization of an 8-Tap FIR Filter using Verilog HDL. Starting from a basic FIR architecture, the design is enhanced using Symmetry, Pipelining, and Carry Save Adders (CSA) to improve hardware efficiency and performance while maintaining the same filtering functionality.

The project focuses on understanding how different architectural optimizations affect hardware resources, speed, and scalability in DSP hardware design.

---

## 📈 Design Evolution

```text
Basic FIR
    ↓
Symmetric FIR
    ↓
Pipelined Symmetric FIR
    ↓
Pipelined Symmetric FIR + CSA
```

---

## 📊 Architecture Comparison

| Feature | Basic FIR | Symmetric FIR | Pipelined Symmetric FIR | Pipelined Symmetric FIR + CSA |
|----------|----------|----------|----------|----------|
| Multipliers | 8 | 4 | 4 | 4 |
| Adders | 7 | 7 | 7 | CSA + Final Adder |
| Symmetry Optimization | ❌ | ✅ | ✅ | ✅ |
| Pipelining | ❌ | ❌ | ✅ | ✅ |
| Carry Save Adder (CSA) | ❌ | ❌ | ❌ | ✅ |
| Area Efficiency | Low | Medium | Medium | High |
| Speed | Low | Medium | High | Very High |
| Power Efficiency | Low | Better | Better | Best |

---


## 🧪 Functional Verification

The CSA-based implementation was verified against the Pipelined Symmetric FIR Filter.

### Verification Result

```text
Pipelined FIR Output
          =
CSA FIR Output
```

After proper pipeline alignment, both architectures produced identical output sequences.

✅ Functional Equivalence Verified

✅ Simulation Passed

✅ RTL Synthesizable

---

## 📷 Simulation Results

### Pipelined Symmetric FIR

(Add waveform / TCL console screenshot here)

### CSA-Based Pipelined Symmetric FIR

(Add waveform / TCL console screenshot here)

---

## 🚀 Future Work

The current implementation focuses on an optimized **8-Tap FIR Filter** architecture.

The next stage of the project is the development of a **16-Tap Symmetric Pipelined FIR Filter** with advanced accumulation techniques.

### Planned Enhancements

✅ 16-Tap Symmetric FIR Filter

✅ 16-Tap Pipelined FIR Filter

✅ CSA-Based Accumulation Tree

✅ Resource Utilization Analysis

✅ Timing and Performance Comparison

✅ Low-Power DSP Optimization

### Long-Term Goal

```text
Reduced Multipliers
        +
Pipelining
        +
CSA / Compressor Trees
        =
High-Speed Low-Power FIR Filter
```

suitable for FPGA, DSP, and VLSI applications.

---

## 🛠️ Tools Used

| Category | Tool |
|----------|------|
| HDL | Verilog HDL |
| Simulation | Xilinx Vivado |
| Design Style | RTL Design |
| Domain | Digital Signal Processing (DSP) |

---

## 🎯 Key Learning

```text
Basic FIR
      ↓
Reduced Multipliers (Symmetry)
      ↓
Reduced Critical Path (Pipelining)
      ↓
Reduced Carry Delay (CSA)
      ↓
High-Speed Low-Power FIR Filter
```

---

## 👩‍💻 Author

**Patta Snehita**  
B.Tech, Electrical Engineering  
National Institute of Technology Durgapur

📌 Interests: RTL Design • FPGA Design • DSP Hardware • Verilog HDL • VLSI Design
