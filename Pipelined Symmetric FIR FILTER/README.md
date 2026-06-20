## 🚀 Enhancement: Pipelined Symmetric FIR Architecture

### Enhanced FIR Architecture with Reduced Hardware Complexity and Improved Throughput

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![FIR Filter](https://img.shields.io/badge/Filter-8--Tap%20FIR-green)
![Low Power](https://img.shields.io/badge/Goal-Low%20Power-brightgreen)
![High Speed](https://img.shields.io/badge/Goal-High%20Speed-orange)
![Symmetry](https://img.shields.io/badge/Optimization-50%25%20Multiplier%20Reduction-blueviolet)
![Pipeline](https://img.shields.io/badge/Architecture-4--Stage%20Pipeline-red)
![Vivado](https://img.shields.io/badge/Verified%20In-Vivado-success)

This update extends the previously implemented **Symmetric 8-Tap FIR Filter** by introducing **pipeline registers** between major computational stages.

### 🔄 What Changed?

In the earlier design, pair addition, multiplication, and accumulation were performed within the same data path, resulting in a longer critical path.

The updated architecture divides the computation into multiple pipeline stages:

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
Final Addition
```

### ⚡ Why Pipelining?

Pipelining allows different input samples to be processed simultaneously at different stages of computation.

Instead of waiting for an entire FIR computation to finish, new samples can enter the pipeline every clock cycle, increasing throughput and improving timing performance.

### 📈 Improvements Over Previous Version

| Feature                     | Symmetric FIR | Pipelined Symmetric FIR |
| --------------------------- | ------------- | ----------------------- |
| Multipliers                 | 4             | 4                       |
| Coefficient Symmetry        | ✅             | ✅                       |
| Pipeline Stages             | ❌             | ✅                       |
| Critical Path               | Longer        | Reduced                 |
| Throughput                  | Lower         | Higher                  |
| Maximum Operating Frequency | Lower         | Higher                  |

### 🎯 Key Outcome

The functionality of the FIR filter remains unchanged, but the internal architecture is optimized for high-speed operation by reducing the critical path through pipelining.

