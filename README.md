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

<img width="846" height="1280" alt="Image" src="https://github.com/user-attachments/assets/76262fbe-7789-4fa8-bc7a-b795c53495d3" />
https://github.com/user-attachments/assets/31509280-f15e-4dc3-a9bb-78d4db7c0e76


A video demonstration is also included in this folder.

# Universal Gates

This project demonstrates the implementation of the two universal logic gates, **NAND** and **NOR**, using Verilog HDL.

NAND and NOR are called universal gates because any basic logic gate can be constructed using only NAND gates or only NOR gates.

## Gates Implemented

### NAND Gate

The NAND gate is the inverted output of an AND operation.

**Boolean Expression:**

`Y = ~(A · B)`

| A | B | Y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

### NOR Gate

The NOR gate is the inverted output of an OR operation.

**Boolean Expression:**

`Y = ~(A + B)`

| A | B | Y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

## Hardware Demonstration

The NAND and NOR gates were implemented on a Spartan-6 FPGA board. The applied input combinations and corresponding LED outputs demonstrate the logic operation of each gate.

<img width="1280" height="1184" alt="Image" src="https://github.com/user-attachments/assets/5d81c563-92ca-4c31-983f-7b74eb255b3a" />
https://github.com/user-attachments/assets/e9091171-3988-459a-bcb0-5b08a1f06b4b

A video demonstration is also included in this folder.


# 4:1 Multiplexer

This project demonstrates the implementation of a **4:1 Multiplexer (MUX)** using Verilog HDL.

A multiplexer is a digital circuit that selects **one of multiple input signals** and passes the selected input to a single output. A 4:1 multiplexer has four data inputs, two select lines, and one output.

## Inputs and Output

- **Data Inputs:** I0, I1, I2, I3
- **Select Lines:** S0, S1
- **Output:** Y

The select lines determine which input is connected to the output.

| S1 | S0 | Output Y |
|---|---|---|
| 0 | 0 | I0 |
| 0 | 1 | I1 |
| 1 | 0 | I2 |
| 1 | 1 | I3 |

## Boolean Expression

`Y = (~S1 · ~S0 · I0) + (~S1 · S0 · I1) + (S1 · ~S0 · I2) + (S1 · S0 · I3)`

## Hardware Demonstration

The 4:1 multiplexer was implemented on a **Spartan-6 FPGA board**. The four data inputs and select lines were applied through the board controls, and the selected output was observed using the onboard LED.

<img width="1220" height="1280" alt="Image" src="https://github.com/user-attachments/assets/147d0086-5189-400f-a3c2-66f97ea4c20b" />

https://github.com/user-attachments/assets/052c8b5a-f5bf-4a36-95d1-906266c9105c

A video demonstration is also included in this folder.



# 1:4 Demultiplexer

This project demonstrates the implementation of a **1:4 Demultiplexer (DEMUX)** using Verilog HDL.

A demultiplexer is a digital circuit that takes a **single input signal** and routes it to one of multiple output lines based on the select inputs. A 1:4 demultiplexer uses one data input, two select lines, and four outputs.

## Inputs and Outputs

- **Data Input:** I
- **Select Lines:** S0, S1
- **Outputs:** Y0, Y1, Y2, Y3

The select lines determine which output receives the input signal.

| S1 | S0 | Output |
|---|---|---|
| 0 | 0 | Y0 = I |
| 0 | 1 | Y1 = I |
| 1 | 0 | Y2 = I |
| 1 | 1 | Y3 = I |

All other outputs remain `0`.

## Boolean Expressions

`Y0 = I · ~S1 · ~S0`

`Y1 = I · ~S1 · S0`

`Y2 = I · S1 · ~S0`

`Y3 = I · S1 · S0`

## Hardware Demonstration

The 1:4 demultiplexer was implemented on a **Spartan-6 FPGA board**. The input and select lines were applied using the board controls, and the selected output was observed through the onboard LEDs.
<img width="1280" height="1144" alt="Image" src="https://github.com/user-attachments/assets/d716e029-5eab-4596-bbcd-926c7ba1dc1e" />
https://github.com/user-attachments/assets/2f2258ff-b808-4806-a959-23c83189a901

A video demonstration is also included in this folder.




# 2-bit Comparator

This project demonstrates the implementation of a **2-bit Magnitude Comparator** using Verilog HDL.

A magnitude comparator compares two binary numbers and determines their relationship. The circuit compares two 2-bit inputs, **A** and **B**, and produces three outputs indicating whether **A is greater than B, equal to B, or less than B**.

## Inputs and Outputs

- **Inputs:** A1, A0, B1, B0
- **Outputs:** A > B, A = B, A < B

| A1 A0 | B1 B0 | Result |
|---|---|---|
| 00 | 00 | A = B |
| 00 | 01 | A < B |
| 00 | 10 | A < B |
| 00 | 11 | A < B |
| 01 | 00 | A > B |
| 01 | 01 | A = B |
| 01 | 10 | A < B |
| 01 | 11 | A < B |
| 10 | 00 | A > B |
| 10 | 01 | A > B |
| 10 | 10 | A = B |
| 10 | 11 | A < B |
| 11 | 00 | A > B |
| 11 | 01 | A > B |
| 11 | 10 | A > B |
| 11 | 11 | A = B |

## Hardware Demonstration

The 2-bit comparator was implemented on a **Spartan-6 FPGA board**. The inputs A1, A0, B1, and B0 were applied using the onboard push buttons, while the comparison results were displayed using the onboard LEDs.

<img width="1123" height="1280" alt="Image" src="https://github.com/user-attachments/assets/f4ea31cb-46fe-44a1-9b99-4ad736ef00f6" />

# Full Adder

This project demonstrates the implementation of a **Full Adder** using Verilog HDL.

A Full Adder is a combinational logic circuit that adds **three 1-bit inputs** and produces two outputs: **Sum** and **Carry**.

## Inputs and Outputs

- **Inputs:** A, B, C (Carry-in)
- **Outputs:** SUM, CARRY (Carry-out)

| A | B | C | SUM | CARRY |
|---|---|---|---|---|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

## Boolean Expressions

`SUM = A ⊕ B ⊕ C`

`CARRY = AB + BC + AC`

## Hardware Demonstration

The Full Adder was implemented on a **Spartan-6 FPGA board**. The three inputs were applied using the onboard push buttons, while the **SUM** and **CARRY** outputs were observed using the onboard LEDs.

<img width="1280" height="1139" alt="Image" src="https://github.com/user-attachments/assets/7c4da664-b362-4e8b-8db7-ba8bb517ead0" />



# Full Subtractor

This project demonstrates the implementation of a **Full Subtractor** using Verilog HDL.

A Full Subtractor is a combinational logic circuit that performs the subtraction of **three 1-bit inputs** and produces two outputs: **Difference** and **Borrow Out**.

## Inputs and Outputs

- **Inputs:** A, B, Bin (Borrow-in)
- **Outputs:** Difference, Borrow Out

| A | B | Bin | Difference | Borrow Out |
|---|---|---|---|---|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 0 |
| 1 | 1 | 1 | 1 | 1 |

## Boolean Expressions

`Difference = A ⊕ B ⊕ Bin`

`Borrow Out = (~A · B) + (~A · Bin) + (B · Bin)`

## Hardware Demonstration

The Full Subtractor was implemented on a **Spartan-6 FPGA board**. The inputs **A, B, and Bin** were applied using the onboard push buttons, while the **Difference** and **Borrow Out** results were observed using the onboard LEDs.

<img width="1063" height="1280" alt="Image" src="https://github.com/user-attachments/assets/081a4319-2b7e-4ffd-ba3b-0d562fb96634" />
# Binary to Gray Code Converter

This project demonstrates the implementation of a **4-bit Binary to Gray Code Converter** using Verilog HDL.

A Gray code is a binary numeral system in which two consecutive values differ by only **one bit**. It is commonly used in digital systems where minimizing bit changes is useful.

## Inputs and Outputs

- **Binary Inputs:** B3, B2, B1, B0
- **Gray Code Outputs:** G3, G2, G1, G0

The binary input is converted into its corresponding Gray code output.

| Binary | Gray Code |
|---|---|
| 0000 | 0000 |
| 0001 | 0001 |
| 0010 | 0011 |
| 0011 | 0010 |
| 0100 | 0110 |
| 0101 | 0111 |
| 0110 | 0101 |
| 0111 | 0100 |
| 1000 | 1100 |
| 1001 | 1101 |
| 1010 | 1111 |
| 1011 | 1110 |
| 1100 | 1010 |
| 1101 | 1011 |
| 1110 | 1001 |
| 1111 | 1000 |

## Conversion Logic

The Gray code is generated using XOR operations between adjacent binary bits.

`G3 = B3`

`G2 = B3 ⊕ B2`

`G1 = B2 ⊕ B1`

`G0 = B1 ⊕ B0`

## Hardware Demonstration

The Binary to Gray Code Converter was implemented on a **Spartan-6 FPGA board**. The 4-bit binary input was applied using the onboard push buttons, and the corresponding 4-bit Gray code output was displayed using the onboard LEDs.

<img width="1216" height="1280" alt="Image" src="https://github.com/user-attachments/assets/b7b11f0e-332b-4757-9d23-41951d1138d6" />

