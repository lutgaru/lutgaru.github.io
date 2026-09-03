---
title: "Babilo DevLog #3: Asynchronous Engines and UX Refinement"
description: "Moving heavy lifting to background threads, centralizing engine ownership in Rust, and cleaning up the interface."
pubDate: 2026-05-28
category: "babilo"
tags: ["rust", "tauri", "architecture", "ux"]
---


While we have been defining the **Learning Modes** specification, the core engine has undergone a massive refactor to ensure the experience is fluid. Running local LLMs and TTS (Text-to-Speech) engines is resource-intensive, and our recent commits focus on making that process invisible to the user.

## Asynchronous Initialization & Splash Screen

One of the most significant changes is how Babilo starts. We’ve moved the LLM and TTS initialization to a dedicated background thread in the Rust backend.

Previously, the UI could hang while the engines loaded. Now, we’ve implemented a **two-phase boot sequence**:

1. **Splash Screen:** A lightweight "shimmer" loading bar replaced the old spinner for a more modern feel.
2. **Event-Driven Ready State:** The backend now emits `babilo://core-ready` or `babilo://core-error` events. The frontend waits for these signals before allowing the user to dive into a session.

## Centralizing Engine Ownership (The SessionManager)

As the project grows, managing the lifecycle of the AI engines became complex. We’ve refactored the backend to centralize everything within a `SessionManager`.

* **Ownership:** `AppState` no longer holds loose engines; `SessionManager` is now the single authority, holding engines as internal `Arcs`.
* **Safety:** By moving `run_turn_streaming()` to a synchronous fire-and-forget pattern, we’ve avoided common Rust `MutexGuard` issues across `await` points, making the inference loop much more robust.
* **Decoupling:** Prompt construction is now handled at the session layer (`build_turn_prompt`), separating the pedagogical logic from the raw inference engine.

## Refining the Session UX

We’ve also cleaned up the interface to keep the focus on learning. The biggest change is the **Transcript Panel**:

* **Slide-out Side Panel:** Instead of cluttering the main "stage," the transcript now lives in an animated side panel with a push transition.
* **Cleaner Controls:** We replaced the old settings button with a dedicated transcript toggle, simplifying the layout to a single-column focus during active practice.

## Technical Fixes of Note

* **UTF-8 Boundaries:** Fixed a bug where the lookahead buffer could flush in the middle of a multi-byte character, ensuring text streaming is always clean.
* **Inference Speed:** Increased `max_output_tokens` from 150 to 1000 to allow for longer, more detailed explanations when the mode requires it.
* **Race Conditions:** We now register stream listeners *before* calling the backend to ensure no data is lost during the initial milliseconds of an AI response.

Babilo is feeling more like a polished product every day. 

See you in the next update!

