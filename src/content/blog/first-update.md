---
title: "Babilo DevLog #1: Building a Cross-Platform Local AI Engine with Vulkan and Rust"
description: "How we achieved high-performance local inference and full-duplex voice architecture using Tauri, Vulkan, and llama.cpp."
pubDate: 2026-05-18
tags: ["rust", "vulkan", "tauri", "llm", "local-ai"]
---

# We have a blog for Babilo!

It’s been an incredibly busy week. After pushing the very first version of our core engine to GitHub, we’ve already reached 3 stars—most likely driven by our recent post in the r/LocalLlama community. It is genuinely exciting to see this initial spark of interest.

A major focus for Babilo is absolute hardware portability. Thanks to our core architecture leveraging Vulkan, we can deliver native cross-platform support across diverse GPU environments, including AMD and NVIDIA. Furthermore, Apple Silicon (M-series chips) compatibility is fully planned and will be integrated in time for our upcoming Early Access launch. Naturally, there are still a few edge cases and bugs to iron out along the way, but the structural foundations are solid.

### Current Development Status

As you might have noticed in the public repository, the first stable version of the core engine is now live. This means you can run and converse with a fully local LLM using `llama.cpp` accelerated via Vulkan, completely contained within a lightweight desktop environment.

The current stack consists of:

* **Inference Backend:** `llama.cpp` (Vulkan) for local acceleration.
* **Application Runtime & Backend:** Tauri + Rust for performance, low memory footprint, and safety.
* **Frontend:** Google’s Lit for ultra-fast, lightweight web components.
* **Interaction:** Full-duplex voice conversation capability.

While I haven't formalized a strict benchmarking suite just yet, the out-of-the-box stability and execution speed are genuinely impressive for such an early build.

### What's Next: "Learning Modes"

Over the last few days, development has shifted toward our next milestone: **Learning Modes**. These are structured configuration files that will programmatically dictate how Babilo behaves, adapts, and guides you through language acquisition.

We will dive deep into the technical implementation of these configuration specs in our next update. Stay tuned, and see you all in the next log! :D

