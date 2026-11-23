---
name: poteto-pyramid
description: >-
  Apply the Poteto Pyramid engineering philosophy: prioritize clean architecture,
  deterministic checks (types, tests, linting), and runtime verification to eliminate
  code slop and prevent recurring defects.
---

# Poteto Pyramid Engineering Guide

Use this skill when auditing, designing, refactoring, or reviewing code to ensure it meets rigorous engineering standards.

## The Hierarchy of Trust (Poteto Pyramid)

```
       /\
      /  \     Level 4: Prose & Documentation (Lightest weight, least trust)
     /----\
    /      \    Level 3: Verification (Runtime tests, diff inspection, builds)
   /--------\
  /          \   Level 2: Deterministic Checks (Types, linters, unit tests, CI)
 /------------\
/              \  Level 1: Architecture & Codebase (Clean boundaries, safe APIs)
----------------
```

Trust increases downward. Always solve problems at the lowest possible level before resorting to higher levels.

---

## 1. Architecture & Codebase (Foundational)

Make invalid states unrepresentable:
- **Clean Boundaries**: Keep modules loosely coupled with clear contracts.
- **Fail-Safe APIs**: Design interfaces where correct usage is the easiest and default path.
- **Eliminate Bug Classes**: If a parameter can be misused, change the type or shape so misuse fails at compile time.
- **Respect Sound Conventions**: Follow the existing patterns of the project when solid; refactor incrementally when flawed.
- **No Permanent Workarounds**: Never introduce a "temporary" hack that bypasses architectural integrity.

---

## 2. Deterministic Checks (Automated Enforcement)

Never rely on memory or documentation when an automated check can enforce a rule:
- **Strict Typing**: Maximize type safety (e.g., TypeScript `strict`, Rust type safety, Python type hints). Avoid `any`, unchecked casts, or overly loose union types.
- **Unit & Integration Tests**: Write targeted tests that verify contracts, not implementation details.
- **Linting & Formatting**: Leverage linters (ESLint, Ruff, Clang-Tidy, etc.) with strict rules enabled.
- **System Boundary Validation**: Parse and validate inputs at boundaries (e.g., Zod, Pydantic, protobuf) rather than trusting caller data.
- **Regression Gates**: Any bug fix must include an automated check that fails without the fix.

---

## 3. Verification Protocol

Code is incomplete until verified:

1. **Type Checking & Linting**: Run the compiler / typechecker and linter with zero errors.
2. **Test Execution**: Run relevant test suites and report concrete results (e.g. `X tests passed`).
3. **Application Build**: Ensure clean production/development builds without warnings or errors.
4. **Runtime Behavior**: Actually execute or simulate execution of the code path. Verify both happy paths and edge/failure cases.
5. **Diff Inspection**: Review `git diff` to ensure no stray files, unintended modifications, or leftover debug logging exist.

> [!IMPORTANT]
> Always report what was verified and what could not be verified. Never claim tests passed if they were not executed.

---

## 4. Prose & Documentation

- Keep instructions, comments, and docstrings concise and actionable.
- Document architectural decisions ("why"), not self-evident code ("what").
- Never use documentation as a band-aid for flawed APIs.

---

## Operating Protocol for Bug Fixes & Refactoring

When addressing an issue or refactoring:
1. **Can architecture prevent it?** Can the API or type definition be adjusted so the bug cannot recur?
2. **Can a deterministic check catch it?** Add or tighten a type, lint rule, or unit test.
3. **Implement the smallest reliable fix:** Keep changes focused; do not rewrite working unrelated systems.
4. **Verify resolution:** Confirm the issue is resolved and all checks pass.
5. **Add regression protection:** Ensure future commits cannot reintroduce the flaw.
