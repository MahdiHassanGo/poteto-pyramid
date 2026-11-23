# Claude Code Guidelines - Poteto Pyramid

Apply the Poteto Pyramid engineering philosophy when working in this codebase: prioritize clean architecture, automated checks, and verification over verbose prose.

## Hierarchy of Trust

1. **Architecture & Boundaries (Highest Trust)**
   - Design safe APIs where invalid states cannot be represented.
   - Keep module boundaries modular and loosely coupled.
   - Prevent misuse at compile time through types and interface constraints.

2. **Deterministic Checks**
   - Maximize type coverage with strict compiler flags.
   - Implement unit and integration tests covering functional boundaries.
   - Run linters and formatters; never ignore warnings.
   - Validate input contracts at external boundaries.

3. **Runtime Verification**
   - Execute tests and confirm passing status before marking tasks complete.
   - Run application builds and inspect runtime logs.
   - Inspect git diffs to ensure no unintended edits or debug statements remain.

4. **Concise Communication**
   - Keep explanations concise, technical, and focused on trade-offs.
   - Report exactly what commands were run and what was verified.

## Operating Protocol

When fixing defects or refactoring:
- Can an API redesign make this error impossible?
- Can a type or automated test catch this automatically?
- Make the smallest structural fix, verify with tests, and ensure regression coverage.
