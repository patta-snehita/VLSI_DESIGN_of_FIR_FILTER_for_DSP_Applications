# 🚀 Design of Pipelined Low-Power FIR Filter Using Carry Save Adders and Parallel Processing Techniques

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![DSP](https://img.shields.io/badge/Domain-DSP-green)
![Pipeline](https://img.shields.io/badge/Pipelined-Yes-orange)
![CSA](https://img.shields.io/badge/Carry%20Save%20Adder-Integrated-red)
![Parallel](https://img.shields.io/badge/Parallel%20Processing-2x-success)
![Vivado](https://img.shields.io/badge/Tool-Vivado-purple)

---

## 📌 Project Overview

This project presents the design and implementation of a **16-Tap Pipelined Low-Power FIR Filter** optimized using **Symmetry, Carry Save Adders (CSA), and Parallel Processing Techniques**.

The objective is to improve FIR filter performance by reducing hardware complexity, minimizing carry propagation delay, and increasing throughput through parallel data processing.

---

## 📊 Design Evolution

| Version | Description | Improvement |
|----------|-------------|-------------|
| Basic FIR | Direct FIR implementation | Baseline Design |
| Symmetric FIR | Uses coefficient symmetry | Reduced multipliers |
| Pipelined FIR | Added pipeline registers | Higher operating frequency |
| CSA-Based FIR | Carry Save Adder accumulation | Reduced carry delay |
| Parallel FIR | Two FIR engines operating simultaneously | 2× Throughput |

---

## ⚡ Optimization Summary

| Optimization Technique | Purpose | Benefit |
|------------------------|---------|---------|
| Symmetry | Pair symmetric coefficients | 50% fewer multipliers |
| Pipelining | Break critical path | Faster operation |
| Carry Save Adder (CSA) | Delay carry propagation | Faster accumulation |
| Parallel Processing | Process multiple streams simultaneously | Higher throughput |

---

## 🏗️ Architecture Features

| Parameter | Value |
|------------|--------|
| FIR Length | 16-Tap |
| Filter Type | Symmetric FIR |
| Pipeline Stages | Multi-Stage Pipeline |
| Adder Architecture | Carry Save Adder (CSA) |
| Processing Method | 2-Parallel Processing |
| HDL | Verilog HDL |
| Verification Tool | Xilinx Vivado |

---

## 🔄 Parallel FIR Architecture

```text
          Input Stream 1
                 │
                 ▼
        16-Tap FIR Engine #1
                 │
                 ▼
              Output 1


          Input Stream 2
                 │
                 ▼
        16-Tap FIR Engine #2
                 │
                 ▼
              Output 2
```

Two independent FIR engines operate simultaneously, allowing two input samples to be processed in parallel.

---

## 🧪 Simulation Results

### Input Stream 1

```text
2,4,6,8,10,12,14,16,
18,20,22,24,26,28,30,32
```

### Input Stream 2

```text
32,30,28,26,24,22,20,18,
16,14,12,10,8,6,4,2
```

### Verification Results

| Metric | Result |
|---------|---------|
| Peak Output (y0) | 1260 |
| Peak Output (y1) | 1260 |
| Pipeline Operation | ✅ Verified |
| CSA Operation | ✅ Verified |
| Parallel Processing | ✅ Verified |
| FIR Response | ✅ Correct |
| RTL Synthesizable | ✅ Yes |

---

## 📈 Throughput Comparison

| Architecture | Samples Processed per Clock |
|--------------|-----------------------------|
| Single FIR Core | 1 |
| Parallel FIR Architecture | 2 |

### Result

🚀 **2× Throughput Improvement**

---

## 🎯 Key Achievements

| Technique | Achievement |
|------------|------------|
| Symmetry | Reduced multiplier count |
| Pipelining | Improved operating frequency |
| CSA | Reduced accumulation delay |
| Parallel Processing | Doubled throughput |
| Combined Architecture | High-Speed Low-Power FIR Filter |

---

## 🚀 Future Work

| Planned Enhancement | Objective |
|---------------------|------------|
| Polyphase FIR Architecture | Hardware-efficient parallelism |
| CSA Reduction Tree | Faster accumulation |
| Advanced Parallel Processing | Increased throughput |
| Resource Utilization Analysis | Area optimization |
| FPGA Hardware Deployment | Real-time implementation |

### Future Design Flow

```text
16-Tap Pipelined FIR
          ↓
CSA-Based FIR
          ↓
2-Parallel FIR
          ↓
Polyphase FIR
          ↓
High-Speed Low-Power DSP Architecture
```

---

## 🛠️ Tools Used

| Category | Tool |
|----------|------|
| HDL | Verilog HDL |
| Simulation | Xilinx Vivado |
| Design Methodology | RTL Design |
| Domain | Digital Signal Processing (DSP) |

---

## 👩‍💻 Author

**Patta Snehita**  
B.Tech Electrical Engineering  
National Institute of Technology Durgapur

📌 RTL Design • FPGA Development • DSP Hardware • Verilog HDL • VLSI Design
