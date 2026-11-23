# Using Poteto Pyramid with ChatGPT

This folder provides ready-to-use configurations to bring the Poteto Pyramid philosophy into OpenAI ChatGPT.

## Option 1: Create a Custom GPT (Recommended for Teams & Projects)

1. Navigate to **ChatGPT** > **Explore GPTs** > **Create**.
2. Under the **Configure** tab:
   - **Name**: `Poteto Pyramid Engineer`
   - **Description**: `Software engineering assistant enforcing clean architecture, deterministic checks, and verification.`
   - **Instructions**: Copy and paste the contents of `custom-gpt-instructions.md`.
   - **Conversation Starters**:
     - *Review this architecture against the Poteto Pyramid.*
     - *Help me design a fail-safe API for this module.*
     - *Write deterministic tests and boundary validations for this feature.*
     - *Refactor this code to eliminate recurring defect classes.*
3. (Optional) Upload `skills/poteto-pyramid/SKILL.md` to the **Knowledge** section.
4. Save and share or use privately.

## Option 2: Personal Custom Instructions (Applies to All Conversations)

1. Go to **Settings** > **Personalization** > **Custom instructions**.
2. Under *"How would you like ChatGPT to respond?"*, paste the snippet from `custom-instructions.md`.
3. Save changes.
