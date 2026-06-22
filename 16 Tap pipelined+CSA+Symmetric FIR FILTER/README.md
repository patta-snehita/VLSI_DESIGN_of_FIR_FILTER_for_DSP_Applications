# 🚀 16-Tap Pipelined Symmetric FIR Filter with CSA

### High-Speed FIR Filter Design Using Symmetry, Pipelining and Carry Save Adders

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![DSP](https://img.shields.io/badge/Domain-DSP-green)
![CSA](https://img.shields.io/badge/Optimization-CSA-orange)
![Pipeline](https://img.shields.io/badge/Architecture-Pipelined-red)
![Vivado](https://img.shields.io/badge/Tool-Vivado-purple)

---

## 📌 Project Overview

This project extends the **16-Tap Pipelined Symmetric FIR Filter** by integrating a **Carry Save Adder (CSA)** based accumulation stage.

The objective is to reduce carry propagation delay during accumulation while maintaining the same FIR filter response. The design combines:

✅ Symmetry Optimization

✅ Pipelining

✅ Carry Save Adder (CSA) Architecture

to achieve a more efficient DSP hardware implementation.

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
    ↓
16-Tap Pipelined Symmetric FIR + CSA
```

---

## 📊 Architecture Comparison

| Feature | 16-Tap Pipelined FIR | 16-Tap Pipelined FIR + CSA |
|----------|----------|----------|
| Symmetry | ✅ | ✅ |
| Pipelining | ✅ | ✅ |
| Multipliers | 8 | 8 |
| Adder Tree | Conventional | CSA-Based |
| Carry Propagation | High | Reduced |
| Throughput | High | Higher |
| Scalability | Good | Better |

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
Multipliers
      ↓
CSA Compression
      ↓
Pipeline Registers
      ↓
Final Adder
      ↓
Filtered Output
```

---

## 🔍 What Changed?

### Before (Pipelined FIR)

```text
Multipliers
     ↓
Adder Tree
     ↓
Output
```

### After (Pipelined FIR + CSA)

```text
Multipliers
     ↓
CSA Compression
     ↓
SUM + CARRY
     ↓
Final Adder
     ↓
Output
```

Instead of propagating carries through multiple adders, the CSA compresses operands into **SUM** and **CARRY** vectors and postpones carry propagation until the final stage.

---

## 🧪 Functional Verification

The CSA-based implementation was verified against the original **16-Tap Pipelined Symmetric FIR Filter**.

### Verification Result

```text
Pipelined FIR Output
          =
CSA FIR Output
```

After correcting pipeline alignment, both implementations produced identical output sequences.

✅ Functional Equivalence Verified

✅ Simulation Passed

✅ RTL Synthesizable

---

## 📷 Simulation Results

### 16-Tap Pipelined Symmetric FIR

(Add waveform/TCL screenshot here)

### 16-Tap Pipelined Symmetric FIR + CSA

(Add waveform/TCL screenshot here)

---

## 🚀 Future Work

The current implementation focuses on understanding FIR optimization through:

✅ Symmetry

✅ Pipelining

✅ CSA-Based Accumulation

### Next Phase

```text
16-Tap Pipelined FIR + CSA
            ↓
Parallel Processing Techniques
            ↓
Resource & Timing Analysis
            ↓
High-Speed Low-Power FIR Architecture
```

### Planned Enhancements

- Parallel Processing for higher throughput
- Resource utilization comparison
- Timing analysis and Fmax comparison
- Low-power FIR optimization
- FPGA-oriented DSP implementation

---

## 🛠️ Tools Used

- Verilog HDL
- Xilinx Vivado
- RTL Design Methodology

---

## 🎯 Key Learning

```text
Symmetry
    ↓
Reduced Multipliers

Pipelining
    ↓
Higher Throughput

CSA
    ↓
Reduced Carry Delay

Combined
    ↓
Efficient FIR Architecture
```

---

## 👩‍💻 Author

**Patta Snehita**  
B.Tech Electrical Engineering  
National Institute of Technology Durgapur

📌 Interests: RTL Design • FPGA Development • DSP Hardware • Verilog HDL • VLSI Design
