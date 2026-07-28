// ------------------------------------------------------------
// CV generated from JSON Resume to Typst (EN) - US Market Optimized
// Author: Adrian Neftali Sanchez
// ------------------------------------------------------------
#set page(
  margin: (x: 1.5cm, y: 1.2cm), // Ajustado ligeramente para optimizar espacio
  paper: "us-letter",
)
#set text(font: "Helvetica Neue", size: 9.5pt, lang: "en")
#let primary = rgb("#1a73e8")

// Header
#grid(
  columns: (1fr, auto, 1fr),
  align: (left, center, right),
  gutter: 10pt,
  [
    #link("mailto:adrianneftali.s@gmail.com")[adrianneftali.s\@gmail.com] \
    (+52) 951-456-2184 \
    San Diego Area / Ensenada
  ],
  [
    #text(size: 20pt, weight: "bold", fill: primary)[Adrian Neftali Sanchez] \
    #text(size: 11pt, weight: "medium")[Senior Embedded & Wireless Software Engineer]
  ],
  [
    #link("https://www.linkedin.com/in/adrian-neftali-sanchez")[linkedin.com/in/adrian-neftali-sanchez] \
    #link("https://github.com/lutgaru")[github.com/lutgaru]
  ],
)

#v(4pt)

// Summary
#text(weight: "bold", size: 11pt, fill: primary)[Professional Summary]
#v(-4pt)
#line(length: 100%, stroke: 0.5pt + gray)
Senior Embedded & Wireless Software Engineer with 6+ years of experience building and deploying connected embedded products at scale. Expertise includes multi-MCU architectures, BLE communications, OTA update systems, low-level driver development, power optimization, and firmware reliability in real-world environments. Proven track record of solving complex field issues, improving system performance across 5,000+ deployed units, and delivering production software in C/C++ and Rust. Co-inventor of a patented maritime wireless link integrity system and contributor to Zephyr-based embedded platforms. Eligible for immediate US employment under the TN/T-MEC visa framework.

#v(2pt)

// Skills
#text(weight: "bold", size: 11pt, fill: primary)[Technical Skills]
#v(-4pt)
#line(length: 100%, stroke: 0.5pt + gray)

#grid(
  columns: (auto, 1fr),
  gutter: 4pt,
  [*Languages & Core:*], [C, C++, Rust, Go, Python, Dart, JavaScript, Shell Scripting, ARM Cortex-M],
  [*Embedded & Systems:*],
  [Embedded Linux, Zephyr RTOS,
    Bare-Metal Firmware, Bootloaders,
    ARM-based Systems, Linux Kernel Modules,
    Cross-compilation, Device Bring-up],

  [*Wireless & Protocols:*],
  [Bluetooth Low Energy (Multi-role), WebSockets (Async), Custom Protocols, CAN (NMEA 2000), SPI, I2C, UART, 802.15.4, 802.11],

  [*AI & Edge Computing:*],
  [Local Inference, ONNX Runtime, llama.cpp, Vulkan acceleration, VAD (Voice Activity Detection), Audio Streams],

  [*DevOps & Tooling:*],
  [Git, CI/CD, GitHub Actions, Docker, Tauri v2, Flutter, eframe, Renode, Logic Analyzers, Oscilloscopes],
)

#v(2pt)

// Experience
#text(weight: "bold", size: 11pt, fill: primary)[Professional Experience]
#v(-4pt)
#line(length: 100%, stroke: 0.5pt + gray)

#grid(
  columns: (1fr, auto),
  [*Senior R&D Engineer – Embedded & Wireless Software* \ _Navico Group_], [Jun 2022 — Present],
)
#v(1pt)
- *Co-developed and shipped* production-grade firmware for the Lowrance RECON trolling motor, resulting in *5,000+ commercially deployed units*.
- *Achieved a ~50% reduction in power consumption* and *optimized firmware memory footprint by ~33%* through targeted bare-metal and software optimizations.
- *Architected a multi-role BLE subsystem* supporting up to 5 simultaneous peripherals and 1 mobile master device using TI BLE stack and Zephyr RTOS.
- *Designed and implemented a custom BLE application-layer protocol* from scratch, standardizing communication for production devices.
- *Co-designed an Over-the-Air (OAD/OTA) firmware update architecture*, ensuring secure and reliable field updates.
- *Led technical code reviews* for over 100 pull requests in the Bluetooth subsystem and authored 80% of official wireless documentation.
- *Collaborated in a distributed international engineering team* across 3 cities and 2 countries, integrating NMEA 2000 CAN-based marine networks.

#v(2pt)

#grid(
  columns: (1fr, auto),
  [*Engineering Services – Satellite Ground Station Deployment* \ _CICESE_], [Mar 2019 — Aug 2019],
)
#v(1pt)
- *Led end-to-end commissioning* of a ground station from legacy hardware, developing custom Python/C automation for Gpredict-integrated antenna tracking and signal decoding.
- *Orchestrated global tracking efforts* via SatNOGS network integration, securing critical telemetry after initial mission-critical contact failures.
- *Implemented a high-gain signal recovery strategy* leveraging the Dwingeloo radio telescope and custom command scripts to successfully establish stable communication.
- *Maintained full operational control* throughout the mission, facilitating remote camera operations, payload management, and continuous telemetry acquisition until end-of-life.
#v(2pt)

#grid(
  columns: (1fr, auto),
  [*Professional Internship – Telecommunications Systems* \ _CICESE_], [Aug 2018 — Dec 2018],
)
#v(1pt)
- *Co-inventor of Mexican Patent No. 430014*, featuring an automatic link integrity compensation system under dynamic wave-induced motion.
- *Designed and validated a custom long-range radio protocol* for oceanographic buoy telemetry under real-world maritime field tests.

#v(4pt)

// Open Source & Key Projects
#text(weight: "bold", size: 11pt, fill: primary)[Featured Open Source Projects]
#v(-4pt)
#line(length: 100%, stroke: 0.5pt + gray)

#grid(
  columns: (1fr, auto),
  [*Babilo: Local-First Multimodal AI Language Tutor* \ _Lead Developer — Rust, Tauri v2, Vulkan, C++ (llama.cpp)_],
  [#link("https://github.com/lutgaru/Babilo")[\[GitHub\]]],
)
#v(1pt)
- *Architected a privacy-focused AI language tutor* enabling unlimited, real-time conversational practice with customizable roles and immersive learning modes.
- *Implemented runtime pedagogical assessment*, providing immediate feedback on language proficiency during active sessions without internet dependency.
- *Integrated Vulkan-accelerated local inference* to run 9B parameter multimodal models, ensuring high-performance voice interaction on commodity edge hardware.
- *Engineered a low-latency multimodal pipeline* $ "Speech" arrow.r "LLM Engine" arrow.r "TTS" $ tailored for linguistic rhythm and high-fidelity interaction.

#v(2pt)

#grid(
  columns: (1fr, auto),
  [*Sinsajó: Real-Time Local Audio Transcription System* \ _Lead Developer — Rust, Dart (Flutter), ONNX Runtime, Tokio, WebSockets_],
  [#link("https://github.com/lutgaru/Sinsajo")[\[GitHub\]]],
)
#v(1pt)
- *Designed and built a private, client-server MVP* for ultra-low latency (\<200ms) local audio transcription.
- *Developed an async Rust backend* via `Tokio` using an Int8 quantized Canary 180M model, capping memory usage at ~500MB RAM.
- *Coded a custom mathematical VAD (Voice Activity Detection)* filter inside a background Dart Isolate to offload the main UI thread.
- *Engineered a binary WebSocket stream protocol* transmitting raw 16-bit PCM chunks only during active speech segments.

#v(2pt)

#grid(
  columns: (1fr, auto),
  [*SerialGUI-rs: Cross-Platform Graphical Serial Terminal* \ _Lead Developer — Rust, eframe, serialport-rs_],
  [#link("https://github.com/Opentronika/SerialGUI-rs")[\[GitHub\]]],
)
#v(1pt)
- *Developed a lightweight, native GUI tool* for real-world hardware engineering workflows and serial port telemetry monitoring.
- *Leveraged Rust's memory safety guarantees* to implement stable, real-time, cross-platform serial communication handling.

#v(2pt)

// Education
#text(weight: "bold", size: 11pt, fill: primary)[Education]
#v(-4pt)
#line(length: 100%, stroke: 0.5pt + gray)

#grid(
  columns: (1fr, auto),
  [*M.Sc. in Electronics and Telecommunications* \ _CICESE_], [Aug 2019 — Mar 2022],
)
#v(1pt)
- *Thesis:* Evaluated security-performance trade-offs in IoMT networks by benchmarking 8 NIST Lightweight Cryptography candidates against AES-128.
- *Systems Engineering:* Architected a multi-node IoMT testbed using *Contiki-NG* OS, cross-validating results across *Cooja/Renode* simulators and *TI CC2650* hardware.
- *Key Findings:* Quantified the impact of cryptographic overhead on network latency and power efficiency, providing actionable data for securing resource-constrained edge devices.

#v(2pt)

#grid(
  columns: (1fr, auto),
  [*B.Sc. in Electronic Engineering* \ _Instituto Tecnológico de Oaxaca_], [Aug 2014 — Aug 2018],
)
#v(1pt)
- *Robotics & Leadership:* Active member of the Robotics Club; organized and competed in regional Sumobot tournaments, focusing on rapid prototyping and firmware development.
- *Teaching:* Mentored students in embedded systems development through structured Arduino workshops and practical lab sessions.
