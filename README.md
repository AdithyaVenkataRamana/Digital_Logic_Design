# Digital_Logic_Design

# Basic Logic Gates

This project demonstrates the fundamental logic gates **AND, OR, and NOT** using Verilog HDL.

Logic gates are the basic building blocks of digital electronics. They take one or more binary inputs and produce a binary output based on a specific logical operation.

## Logic Gates Covered

### AND Gate

The AND gate produces an output of `1` only when **both inputs are 1**.

**Boolean Expression:**

`Y = A · B`

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

### OR Gate

The OR gate produces an output of `1` when **at least one input is 1**.

**Boolean Expression:**

`Y = A + B`

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

### NOT Gate

The NOT gate has a single input and produces the **opposite** of the input.

**Boolean Expression:**

`Y = ~A`

| A | Y |
|---|---|
| 0 | 1 |
| 1 | 0 |

## Hardware Demonstration

The logic gates were implemented and tested on a Spartan-6 FPGA board. The input combinations were applied using the onboard controls, and the corresponding logic outputs were observed through the onboard LEDs.

The hardware demonstration is included below.

![Basic Logic Gates - Spartan-6](Basic%20Logic%20Gates1.jpg)

A video demonstration is also included in this folder.
