
---
title: "Babilo DevLog #2: Decoupling Behavior with .babilo.json Modes"
description: "An inside look at our interchangeable behavior system: why we moved away from hardcoded logic to a schema-driven architecture."
pubDate: 2026-05-26
tags: ["rust", "architecture", "learning-modes", "json"]
---

# I present to you the learning modes

The core philosophy of Babilo is to remain an engine, not a rigid application. To achieve this, we have finalized the architecture for **Babilo Modes**, our system for interchangeable behaviors. Instead of hardcoding learning logic into the Rust backend, every interaction is defined by a `.babilo.json` file that any user can create, share, and import without touching the source code.

## What is a Mode?

A "Mode" defines the entire DNA of a practice session: the LLM’s persona, turn-taking logic, input constraints, and evaluation criteria. The engine itself is agnostic to specific modes; it simply consumes a composed system prompt and acts upon the capabilities defined in the active JSON schema.

### The `.babilo.json` Structure

The frontend uses the `caps` (capabilities) field to dynamically enable or disable UI widgets—such as the microphone button or text input—without needing to know the underlying logic of the mode.

```json
{
  "id": "conversation-en",
  "name": "Free Conversation",
  "description": "Practice open-ended conversation in English. The AI responds naturally and corrects your grammar inline.",
  "mode_prompt": "This is a speaking-focused mode. Prioritize fluency, professional vocabulary.",
  "role_prompt": "You are Clara, a senior HR director with 12 years experience in tech hiring. ",
  "opening_prompt": null,
  "caps": {
    "llm_initiates": false,
    "accepts_audio": true,
    "accepts_text": false
  }
}

```

## The Three Base Modes

We are launching with three foundational modes that demonstrate the flexibility of the engine:

* **Conversation:** The user initiates. The LLM responds naturally while evaluating grammar and fluency inline. (Audio only).
* **Listening:** The LLM dictates a passage. The user transcribes. The engine performs an exact diff evaluation against the original source. (Text only).
* **Shadowing:** The LLM provides a phrase. The user repeats it. The engine evaluates pronunciation and rhythm. (Audio only).

## Why This Matters

By decoupling behavior from the software, Babilo becomes an open platform. Users can write custom modes like *"Ask me about my day and grade my vocabulary"* or *"Dictate these 100 specific words"* without writing a single line of code. These files can be shared on GitHub or distributed in a future marketplace, functioning like specialized system prompts for language acquisition with structured evaluation.

## Future Roadmap: Phases 3 & beyond

We are already planning the evolution of this system:

1. **Parametric Templates:** Introduction of variables like `{{words}}` or `{{passage}}`, allowing the same mode file to act as a template where users fill a form before starting.
2. **Declarative Eval Strategies:** Support for deterministic evaluation methods (e.g., `exact_diff`, `phonetic_diff`). This will make assessment faster and more reliable by moving simple logic away from the LLM and into optimized local code.

Stay tuned for more updates as we refine the schema.
