# 🚀 Design of Pipelined Low-Power FIR Filter Using Carry Save Adders and Parallel Processing Techniques

![Language](https://img.shields.io/badge/Language-Verilog-blue)
![Domain](https://img.shields.io/badge/Domain-DSP-green)
![Filter](https://img.shields.io/badge/Filter-16Tap-success)
![Symmetry](https://img.shields.io/badge/Symmetry-Enabled-yellowgreen)
![Optimization](https://img.shields.io/badge/Optimization-Pipelining-orange)
![CSA](https://img.shields.io/badge/Architecture-CSA-red)
![Parallel](https://img.shields.io/badge/Processing-2X_Parallel-purple)
![Tool](https://img.shields.io/badge/Tool-Vivado-blueviolet)

### From Basic FIR → Symmetric FIR → Pipelined FIR → CSA-Based FIR → 16-Tap Parallel FIR

![Language](https://img.shields.io/badge/Language-Verilog-blue)
![Domain](https://img.shields.io/badge/Domain-DSP-green)
![Filter](https://img.shields.io/badge/Filter-16Tap-success)
![Optimization](https://img.shields.io/badge/Optimization-Pipelining-orange)
![Architecture](https://img.shields.io/badge/Architecture-CSA-red)
![Processing](https://img.shields.io/badge/Processing-Parallel-purple)
![Tool](https://img.shields.io/badge/Tool-Vivado-blueviolet)

## 📌 Overview
This project documents my journey from a **Basic FIR Filter** to a **16-Tap Pipelined Low-Power FIR Filter with Carry Save Adders (CSA) and Parallel Processing Techniques** using Verilog HDL.

---

## 🎯 Project Journey

| Stage | Architecture |
|---------|------------|
| 1 | Basic 8-Tap FIR Filter |
| 2 | 8-Tap Symmetric FIR Filter |
| 3 | 8-Tap Pipelined Symmetric FIR |
| 4 | 8-Tap Pipelined FIR with CSA |
| 5 | 16-Tap Symmetric FIR |
| 6 | 16-Tap Pipelined FIR |
| 7 | 16-Tap Pipelined FIR with CSA |
| 8 | 16-Tap Pipelined FIR with CSA and Parallel Processing |

---

## ⚡ Motivation

The goal was to study how different architectural optimizations affect:

| Metric | Goal |
|----------|---------|
| Speed | Increase operating frequency |
| Area | Reduce hardware complexity |
| Power | Lower switching activity |
| Throughput | Process more samples per clock |
| Scalability | Support larger FIR architectures |

---

## 🏗️ Final Architecture

| Feature | Description |
|----------|------------|
| FIR Length | 16 Tap |
| Filter Type | Symmetric FIR |
| Pipeline Stages | Multi-stage |
| Adder Architecture | Carry Save Adder (CSA) |
| Processing Method | 2-Parallel Processing |
| HDL | Verilog HDL |
| Tool Used | Xilinx Vivado |

---

## 📊 Design Evolution

| Version | Optimization Introduced | Benefit |
|-----------|----------------------|---------|
| Basic FIR | Direct implementation | Functional verification |
| Symmetric FIR | Coefficient symmetry | Reduced multipliers |
| Pipelined FIR | Pipeline registers | Higher clock frequency |
| CSA FIR | Carry Save Adder | Faster accumulation |
| Parallel FIR | Dual FIR engines | 2× Throughput |

---

## ⚙️ Optimization Techniques

### 1️⃣ Symmetric FIR

Instead of using all multipliers independently, symmetric coefficients are paired together.

| Benefit |
|----------|
| Reduced multiplier count |
| Lower hardware utilization |
| Reduced power consumption |

---

### 2️⃣ Pipelining

Registers are inserted between computational stages.

| Benefit |
|----------|
| Reduced critical path delay |
| Increased operating frequency |
| Improved timing performance |

---

### 3️⃣ Carry Save Adders (CSA)

Carry propagation is postponed until the final stage.

| Benefit |
|----------|
| Faster accumulation |
| Reduced adder delay |
| Better scalability for larger FIR filters |

---

### 4️⃣ Parallel Processing

Two FIR engines process independent input streams simultaneously.

| Benefit |
|----------|
| 2× Throughput |
| Increased data processing rate |
| Better performance for real-time DSP applications |

---

## 🔄 Parallel Architecture

```text
Input Stream x0
       │
       ▼
  FIR Engine #1
       │
       ▼
      y0


Input Stream x1
       │
       ▼
  FIR Engine #2
       │
       ▼
      y1
```

---

## 🧪 Simulation Inputs

### Input Stream x0

```text
2, 4, 6, 8, 10, 12, 14, 16,
18, 20, 22, 24, 26, 28, 30, 32
```

### Input Stream x1

```text
32, 30, 28, 26, 24, 22, 20, 18,
16, 14, 12, 10, 8, 6, 4, 2
```

---

## 📈 Simulation Results

| Metric | Result |
|----------|---------|
| Peak Output (y0) | 1260 @ 255000 ns |
| Peak Output (y1) | 1260 @ 195000 ns |
| Pipeline Verified | ✅ |
| CSA Verified | ✅ |
| Parallel Processing Verified | ✅ |
| FIR Response Verified | ✅ |
| RTL Synthesizable | ✅ |

---

## 🔍 Key Observation

Although **y0** and **y1** reach their peak values at different times, both outputs achieve the same maximum value:

```text
Peak(y0) = 1260
Peak(y1) = 1260
```

This confirms the correct operation of the parallel FIR architecture for two independent input streams.

---

## 🚀 Throughput Comparison

| Architecture | Samples Processed per Clock |
|--------------|-----------------------------|
| Single FIR Core | 1 |
| Parallel FIR Architecture | 2 |

### Result

🚀 **2× Throughput Improvement**

---

## 📋 Verification Summary

| Check | Status |
|---------|---------|
| FIR Functional Verification | ✅ Passed |
| Symmetric Architecture Verification | ✅ Passed |
| Pipeline Verification | ✅ Passed |
| CSA Verification | ✅ Passed |
| Parallel Processing Verification | ✅ Passed |
| Simulation Verification | ✅ Passed |

---

## 🛠️ Tools & Technologies

| Category | Tool |
|-----------|------|
| HDL | Verilog HDL |
| Simulation | Xilinx Vivado |
| Design Style | RTL Design |
| Domain | DSP / VLSI |
| Optimization Techniques | Symmetry, Pipelining, CSA, Parallel Processing |

---

## 🎯 Future Work

| Planned Enhancement | Objective |
|----------------------|------------|
| Polyphase FIR Architecture | Hardware-efficient parallelism |
| CSA Reduction Tree | Faster accumulation |
| Advanced Parallel Processing | Higher throughput |
| FPGA Implementation | Real-time deployment |
| Timing & Resource Analysis | Performance evaluation |

---

## 📚 Key Learnings

| Concept | Understanding Gained |
|-----------|-------------------|
| FIR Filters | Hardware implementation of DSP algorithms |
| Symmetry | Resource optimization |
| Pipelining | Throughput enhancement |
| CSA | Fast accumulation techniques |
| Parallel Processing | High-speed DSP architectures |
| RTL Design | Hardware modeling and verification |

---

## 👩‍💻 Author

**Patta Snehita**  
B.Tech Electrical Engineering  
National Institute of Technology Durgapur

### Areas of Interest

- RTL Design
- FPGA Development
- Digital Signal Processing
- Verilog HDL
- VLSI Design
- Hardware Acceleration

⭐ If you found this project useful, feel free to star the repository.
