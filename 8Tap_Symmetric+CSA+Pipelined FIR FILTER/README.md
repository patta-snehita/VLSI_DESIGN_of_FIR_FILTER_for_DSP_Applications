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

## 🔹 Basic 8-Tap FIR Filter

### Architecture

```text
Input
  ↓
Delay Line
  ↓
8 Multipliers
  ↓
7 Adders
  ↓
Output
```

### Features

- Straightforward FIR implementation
- Uses 8 multipliers and 7 adders
- Highest hardware utilization
- Larger area and delay

---

## 🔹 Symmetric FIR Filter

### Symmetric Coefficients

```text
h0 = h7
h1 = h6
h2 = h5
h3 = h4
```

Example:

```text
1 2 3 4 4 3 2 1
```

### Architecture

```text
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

### Improvements

✅ Multiplier count reduced from 8 → 4

✅ Reduced hardware area

✅ Lower power consumption

---

## 🔹 Pipelined Symmetric FIR Filter

### Architecture

```text
Pair Addition
      ↓
 Pipeline Register
      ↓
 Multiplication
      ↓
 Pipeline Register
      ↓
 Partial Addition
      ↓
 Pipeline Register
      ↓
 Output
```

### Improvements

✅ Reduced critical path

✅ Higher operating frequency

✅ Better throughput

✅ FPGA-friendly architecture

---

## 🔹 Pipelined Symmetric FIR Filter with CSA

### Architecture

```text
Pair Addition
      ↓
 Pipeline Register
      ↓
 Multipliers
      ↓
 CSA Compression
      ↓
 Pipeline Register
      ↓
 Final Adder
      ↓
 Output
```

### CSA Concept

Instead of directly adding multiple operands:

```text
A + B + C
```

CSA generates:

```text
SUM
CARRY
```

and postpones carry propagation until the final stage.

### Improvements

✅ Reduced carry propagation delay

✅ Faster accumulation stage

✅ Better scalability for larger FIR filters

✅ High-speed DSP architecture

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

✅ 4:2 Compressor-Based Reduction Tree

✅ Resource Utilization Analysis

✅ Timing and Performance Comparison

✅ Low-Power DSP Optimization

### Future Design Flow

```text
8-Tap FIR
     ↓
8-Tap Symmetric FIR
     ↓
8-Tap Pipelined FIR
     ↓
8-Tap Pipelined FIR + CSA
     ↓
16-Tap Symmetric FIR
     ↓
16-Tap Pipelined FIR
     ↓
16-Tap Pipelined FIR + CSA Tree
     ↓
4:2 Compressor Based FIR Architecture
```

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
