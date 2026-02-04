# day-01-understanding-how-computers-work

## IT & Linux Foundations – Security Data Engineering Roadmap 🧱🐧

### Welcome to Day 1 of my Security Data Engineering journey 🚀

Today was all about building mental models. Before touching Linux commands, cloud dashboards, or SIEM alerts, I focused on understanding what’s really happening under the hood when a computer runs a program.

- This day answers one question:

“What is a computer actually doing when I click Run?📟”

```

Spoiler: it’s not magic. It’s electricity, memory, and rules 😌⚡

```

## 🎯 Objectives for Day 1

- Understand the difference between analog and digital systems

- Learn how computers represent data using number systems

- Master binary, bits, bytes, and hexadecimal

- Understand computer hardware and the role of the CPU

- Learn how instructions are executed via the instruction cycle

- Understand memory hierarchy and why multiple memory types exist

- Learn how programs become machine instructions

- Understand why an operating system is required

- This is foundation-level knowledge. Everything else builds on this 🧱✨


## 🌍 Analog vs Digital (How Reality Becomes Bits)

### Analog (Real World 🌱)

- Continuous values

- Infinite variation

- Examples:

    - Temperature 🌡️

    - Sound waves 🎵

    - Light ☀️

- Represented using physical analogies:

    - Scale needle for weight

    - Mercury level for temperature

- Analog is expressive… but messy 😬


## Digital (Computer World 💻)

- Discrete values

- Limited symbols

- Modern computers use:

```

0 and 1

```

- Everything on a computer:

    - photos 📸

    - music 🎧

    - documents 📄

    - apps 📱

- …is stored as sequences of bits.

- Digital = precise, reliable, copy-perfect 😤


## 🔢 Number Systems (How Computers Count)

### Decimal (Base 10 – Humans 🖐🏽)

- Uses digits 0–9

- Example:

```

345 = (3 × 10²) + (4 × 10¹) + (5 × 10⁰)

```

### Binary (Base 2 – Computers 🔘)

- Uses only:

```
0 and 1

```

- Each position represents a power of 2.

- Example:

```

10111₂

```

- Position values:

```

1×16 + 0×8 + 1×4 + 1×2 + 1×1 = 27₁₀

```

## 💡 Golden rule:

```

Each bit is multiplied by 2^(bit position) (counting from the right, starting at 0).

```

## 🧱 Bits & Bytes (The Atoms of Computing)

- Bit = one binary value (0 or 1)

- Byte = 8 bits

```

1 byte = 2⁸ = 256 possible values
Range: 0 → 255

```

- Example:

```
11111111₂ = 255₁₀

```

### ⚠️ Important:

- A byte doesn’t “store 256”.

- It can represent 256 different values.

## 🎨 Hexadecimal (Binary’s Translator)

- Hexadecimal is base 16, using:

```0–9, A–F```

- Why hex?

    - Binary is long and unreadable

    - Hex compresses binary cleanly

- Example:

```

Binary: 11111111
Hex:    FF
Decimal: 255

```

- Hex shows up in:

    - memory addresses

    - debugging

    - security tooling

    - color codes 🎨


## 🖥️ Computer Hardware (The Physical Machine)

- A computer’s hardware exists to move, store, and transform bits.

### Core Components:

- CPU 🧠 – executes instructions

- RAM 🧠⚡ – short-term memory

- Storage 💾 – long-term memory

- Motherboard 🗺️ – connects everything

- Buses 🛣️ – data highways

- Hardware doesn’t “understand” data.

- It only follows rules very fast 😌⚡


## 🧠 CPU Internals & Instruction Cycle

### CPU Core Components

- ALU 🧮 – performs math & logic

- Registers 📦 – ultra-fast storage inside CPU

- Control Unit 🧭 – orchestrates everything

- Cache 🚀 – fast memory close to CPU

## Instruction Cycle (The Heartbeat 💓)

- Every program runs via this loop:

```
FETCH → DECODE → EXECUTE → STORE → REPEAT
```
Example:

```
ADD R1, R2

```

- Meaning:

    - Fetch instruction from memory

    - Decode operation

    - Execute addition in ALU

    - Store result in register/memory

- This happens billions of times per second 😤🔥

## 🧠 Memory Hierarchy (Why So Many Memory Types)

```
FAST ↑
Registers
Cache
RAM
Disk
SLOW ↓

```

- Faster memory = smaller & expensive

- Slower memory = bigger & cheaper

- Key insight:

    - The CPU can only execute instructions that are in memory (RAM/cache).

- Programs on disk are just… sleeping 😴


## 🧬 How Programs Become Instructions

1️⃣ Developer writes code (Python, C, etc.)

2️⃣ Code is compiled or interpreted

3️⃣ Translated into machine instructions (binary)

4️⃣ OS loads program into RAM

5️⃣ CPU executes instructions via instruction cycle

- Programs don’t run on disk.

- They ***execute in memory 🔐***

## 🧠 Why CPUs Need an Operating System

- Without an OS:

    - programs fight over hardware

    - memory corruption everywhere

    - constant crashes 💥

- The OS:

    - schedules CPU time

    - manages memory

    - controls devices

    - enforces security boundaries

- Mental model:

```User → Application → Operating System → Hardware```


## Key Takeaways from Day 1

- Computers are deterministic machines, not magical entities

- All data becomes bits

- Binary is foundational

- CPU executes blindly; OS enforces order

- Memory hierarchy exists for performance

- Understanding this makes security click

## 🔐 Why This Matters for Security & Data Engineering

- This knowledge explains:

    - memory exploits

    - malware execution

    - performance bottlenecks

    - cloud abstractions

    - SIEM log behavior

- You can’t defend systems you don’t understand 👀🔥


## What’s Next

- Day 2 will move from theory into hands-on Linux, where these concepts become tangible through:

    - files

    - processes

    - permissions

    - logs

- Foundations laid.

- Brain upgraded.

- We move 😤🔥