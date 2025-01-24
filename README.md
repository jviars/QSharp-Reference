# QSharp-Reference
# Quantum Entanglement in Q#

This repository contains a simple Q# program that demonstrates **quantum entanglement** through the creation of a Bell state.

## What This Code Does

- Creates an **entangled Bell state** from two qubits using quantum gates.
- Measures the entangled qubits, showing their **correlated results** (when one qubit is `|0⟩`, the other is always `|0⟩`, and similarly for `|1⟩`).
- Demonstrates **superposition, measurement**, and the **non-local** nature of quantum entanglement.

If you'd like to know more about quantum computing, or if you're new to Q#, this project might be a great starting point! This doesn't mean that it may not be without mistakes! Please correct me if there's an issue. I'd love to learn more about this topic!

---

## Code Highlights

1. **CreateBellPair**:
   - Uses the Hadamard (`H`) gate to put the first qubit into superposition.
   - Then, applies a Controlled-NOT (`CNOT`) gate to **entangle** the two qubits.
   - The result is the system in the maximally entangled Bell state:  
     `( |00⟩ + |11⟩ ) / √2`

2. **DemonstrateEntanglement**:
   - Measures the entangled qubits and outputs the results.
   - Measurements always show consistent correlations due to **entanglement**.

3. **RunTrials**:
   - Repeats the measurement process multiple times to showcase **persistent correlations**.

---

## How to Contribute

I am passionate about learning more about anything related to computing! If you have ideas, corrections, additional examples, or explanations to share, please contribute:

1. Fork the repository to your GitHub account.
2. Add your contributions or enhancements.
3. Submit a pull request with brief details about what you added or changed.
4. Feel free to share resources, suggestions, or learning material as part of your contribution!

---

## Vocabulary List

Here are some key terms in the code and quantum computing explained:

| Term              | Definition                                                                                                    |
|--------------------|-------------------------------------------------------------------------------------------------------------|
| **Qubit**          | The basic unit of quantum information, similar to a classical bit but capable of existing in superposition. |
| **Hadamard Gate**  | A quantum gate that creates superposition, making a qubit equally likely to be `|0⟩` or `|1⟩`.             |
| **CNOT Gate**      | A controlled-NOT gate entangling two qubits by flipping one based on the state of the other.                |
| **Bell State**     | A maximally entangled two-qubit system, represented as `( |00⟩ + |11⟩ ) / √2`.                              |
| **Superposition**  | A quantum state where a qubit exists in a combination of both `|0⟩` and `|1⟩` simultaneously.               |
| **Entanglement**   | A phenomenon where qubits become connected, so the state of one affects the state of the other.             |
| **Measurement**    | The process of observing a qubit, which collapses its quantum state into either `|0⟩` or `|1⟩`.            |
| **Controlled Operation** | A gate operation controlled by the state of another qubit (e.g., CNOT flips a target qubit based on a control qubit). |
| **ResetAll**       | Ensures all qubits are reset to `|0⟩` after use, releasing resources for the quantum simulator.            |
| **Quantum Correlation** | The statistical dependency between measurement outcomes in an entangled state.                         |

---

## Running the Code

Make sure you have the Microsoft Quantum Development Kit (QDK) installed. Then, follow these steps:

1. Clone the repository:
   ```
   git clone https://github.com/jviars/QSharp-Reference
   ```
2. Navigate to the project directory.
3. Run the program using the Q# command-line interface or a compatible IDE.
   ```
   dotnet run
   ```

You should see output where the two qubits always have matching measurement results, e.g.:
```
Qubit 1: Zero, Qubit 2: Zero
Qubit 1: One, Qubit 2: One
...
```

---

## Learning Resources

- [Microsoft Quantum Documentation](https://learn.microsoft.com/en-us/quantum/)
- [Q# User Guide](https://learn.microsoft.com/en-us/quantum/user-guide/)
- [Quantum Katas (Exercises)](https://github.com/microsoft/QuantumKatas)
- Videos and articles on quantum entanglement (search terms: "Bell states", "quantum entanglement").
