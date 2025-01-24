namespace QuantumEntanglement {
    // Import essential quantum operations and functions
    open Microsoft.Quantum.Intrinsic;  // Basic quantum operations (H, CNOT, M)
    open Microsoft.Quantum.Canon;      // Common quantum patterns and utilities

    /// <summary>
    /// Creates entangled Bell pair between two qubits
    /// Input: q1 (control qubit), q2 (target qubit)
    /// Output: Unit (operation modifies qubit states)
    /// </summary>
    operation CreateBellPair(q1 : Qubit, q2 : Qubit) : Unit {
        // Step 1: Put first qubit into superposition state
        // H gate: |0⟩ → (|0⟩ + |1⟩)/√2
        H(q1);
        
        // Step 2: Entangle qubits using controlled-NOT
        // CNOT gate: If q1 is |1⟩, flip q2
        // Creates state (|00⟩ + |11⟩)/√2
        CNOT(q1, q2);
    }

    /// <summary>
    /// Demonstrates entanglement through measurement correlation
    /// Returns: Tuple of measurement results (Result, Result)
    /// </summary>
    @EntryPoint()  // Marks operation as executable entry point
    operation DemonstrateEntanglement() : (Result, Result) {
        // Allocate 2 qubits in |0⟩ state
        using ((q1, q2) = (Qubit(), Qubit())) {
            
            // Create entangled Bell pair
            CreateBellPair(q1, q2);
            
            // Measure both qubits (collapses superposition)
            let result1 = M(q1);  // M = Measurement operator
            let result2 = M(q2);
            
            // Critical: Reset qubits to |0⟩ before release
            ResetAll([q1, q2]);
            
            // Return measurement results
            return (result1, result2);
        }
    }

    /// <summary>
    /// Executes entanglement demonstration multiple times
    /// Shows persistent correlation between measurements
    /// </summary>
    @EntryPoint()
    operation RunTrials() : Unit {
        // Perform 5 experimental trials
        for _ in 1..5 {
            let (r1, r2) = DemonstrateEntanglement();
            Message($"Qubit 1: {r1}, Qubit 2: {r2}");
        }
    }

    // Appendix A: Quantum Computing Prerequisites
    // -------------------------------------------
    // 1. Qubits: Quantum bits exist in superposition of |0⟩ and |1⟩ states
    // 2. H Gate (Hadamard): Creates superposition from basis state
    // 3. CNOT Gate: Entangles qubits (controlled-NOT operation)
    // 4. Measurement: Collapses superposition to classical bit (0 or 1)
    // 5. No-cloning Theorem: Qubits cannot be copied (requires entanglement)
    
    // Appendix B: Key Phenomenon Demonstrated
    // ---------------------------------------
    // 1. Bell State: (|00⟩ + |11⟩)/√2 - maximally entangled state
    // 2. Quantum Correlation: Measurements always match (100% correlation)
    // 3. Non-locality: Correlation persists regardless of physical separation
    // 4. Quantum Randomness: Individual measurements are random
    // 5. Entanglement: Shared quantum state between particles
    
    // Appendix C: Critical Implementation Notes
    // -----------------------------------------
    // 1. Qubit Allocation: 'using' block manages qubit lifecycle
    // 2. Reset Requirement: Must reset qubits before release
    // 3. Measurement Basis: Default is computational basis (Z-axis)
    // 4. Entanglement Lifetime: Maintained until measurement/decoherence
    // 5. Resource Management: Qubits are scarce resources - must be recycled
}
