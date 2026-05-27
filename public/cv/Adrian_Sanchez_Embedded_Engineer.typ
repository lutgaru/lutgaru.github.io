// ------------------------------------------------------------
// CV generated from JSON Resume to Typst (EN) - US Market Optimized
// Author: Adrian Neftali Sanchez
// ------------------------------------------------------------
#set page(
  margin: (x: 1.5cm, y: 1.4cm),
  paper: "us-letter" // Estándar oficial en EE.UU.
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
  ]
)

#v(6pt)

// Summary
#text(weight: "bold", size: 11pt, fill: primary)[Professional Summary]
#v(-4pt)
#line(length: 100%, stroke: 0.5pt + gray)

Senior Embedded & Wireless Software Engineer with 6+ years of hands-on experience architecting production-grade firmware, low-latency software, and local-first Edge AI architectures. Specialized in multi-role BLE, low-power optimization, and systems-level programming in C/C++ and Rust. Co-inventor of a patented maritime wireless link integrity system. Proven track record of delivering up to 50% power reduction across 5,000+ deployed commercial units. Eligible for immediate US employment under the TN/T-MEC visa framework.

#v(4pt)

// Skills
#text(weight: "bold", size: 11pt, fill: primary)[Technical Skills]
#v(-4pt)
#line(length: 100%, stroke: 0.5pt + gray)

#grid(
  columns: (auto, 1fr),
  gutter: 5pt,
  [*Languages & Core:*], [C, C++, Rust, Python, JavaScript, Shell Scripting],
  [*Embedded & RTOS:*], [Zephyr RTOS, Bare-Metal, Custom RTOS, Bootloaders, Cross-compilers, Linux Kernel Modules],
  [*Wireless & Protocols:*], [Bluetooth Low Energy (Multi-role), Custom Protocol Design, OAD/OTA, CAN (NMEA 2000), SPI, I2C, UART],
  [*AI & Edge Computing:*], [Local Inference, llama.cpp, Vulkan acceleration, Multimodal LLM Integration, Audio Streams],
  [*DevOps & Tooling:*], [Git, CI/CD, GitHub Actions, Docker, Tauri v2, eframe, Renode, Logic Analyzers, Oscilloscopes]
)

#v(4pt)

// Experience
#text(weight: "bold", size: 11pt, fill: primary)[Professional Experience]
#v(-4pt)
#line(length: 100%, stroke: 0.5pt + gray)

#grid(
  columns: (1fr, auto),
  [*Senior R&D Engineer – Embedded & Wireless Software* \ _Navico Group_],
  [Jun 2022 — Present]
)
#v(2pt)
- *Co-developed and shipped* production-grade firmware for the Lowrance RECON trolling motor, resulting in *5,000+ commercially deployed units*.
- *Achieved a ~50% reduction in power consumption* and *optimized firmware memory footprint by ~33%* through targeted bare-metal and software optimizations.
- *Architected a multi-role BLE subsystem* supporting up to 5 simultaneous peripherals and 1 mobile master device using TI BLE stack and Zephyr RTOS.
- *Designed and implemented a custom BLE application-layer protocol* from scratch, standardizing communication for production devices.
- *Co-designed an Over-the-Air (OAD/OTA) firmware update architecture*, ensuring secure and reliable field updates.
- *Led technical code reviews* for over 100 pull requests in the Bluetooth subsystem and authored 80% of official wireless documentation.
- *Collaborated in a distributed international engineering team* across 3 cities and 2 countries, integrating NMEA 2000 CAN-based marine networks.

#v(4pt)

#grid(
  columns: (1fr, auto),
  [*Engineering Services – Satellite Ground Station Deployment* \ _CICESE_],
  [Mar 2019 — Aug 2019]
)
#v(2pt)
- *Co-deployed and commissioned* the automated ground station infrastructure for the Mexican nanosatellite Painani 1.
- *Developed custom automation software* in Python/C for antenna rotor tracking mechanisms and RF signal decoding via SatNOGS.

#v(4pt)

#grid(
  columns: (1fr, auto),
  [*Professional Internship – Telecommunications Systems* \ _CICESE_],
  [Aug 2018 — Dec 2018]
)
#v(2pt)
- *Co-inventor of Mexican Patent No. 430014*, featuring an automatic link integrity compensation system under dynamic wave-induced motion.
- *Designed and validated a custom long-range radio protocol* for oceanographic buoy telemetry under real-world maritime field tests.

#v(4pt)

// Open Source & Key Projects
#text(weight: "bold", size: 11pt, fill: primary)[Featured Open Source Projects]
#v(-4pt)
#line(length: 100%, stroke: 0.5pt + gray)

#grid(
  columns: (1fr, auto),
  [*Babilo: High-Performance Local-First Multimodal AI Engine* \ _Lead Developer — Rust, Tauri v2, Vulkan, C++ (llama.cpp)_],
  [#link("https://github.com/lutgaru/Babilo")[\[GitHub\]]]
)
#v(2pt)
- *Architected a low-latency, 100% offline AI voice agent* utilizing an end-to-end multimodal pipeline $ "Voice Input" arrow.r "Multimodal LLM" arrow.r "TTS Output" $.
- *Implemented native audio buffer orchestration* and real-time streaming in Rust, completely removing intermediate model friction.
- *Integrated Vulkan-accelerated local inference* via `llama.cpp` to run 9B parameter multimodal models directly on edge hardware.
- *Designed a lightweight cross-platform container* using Tauri v2 and optimized frontend rendering with Vite + Lit Web Components.

#v(4pt)

#grid(
  columns: (1fr, auto),
  [*SerialGUI-rs: Cross-Platform Graphical Serial Terminal* \ _Lead Developer — Rust, eframe, serialport-rs_],
  [#link("https://github.com/Opentronika/SerialGUI-rs")[\[GitHub\]]]
)
#v(2pt)
- *Developed a lightweight, native GUI tool* for real-world hardware engineering workflows and serial port telemetry monitoring.
- *Leveraged Rust's memory safety guarantees* to implement stable, real-time, cross-platform serial communication handling.

#v(4pt)

// Education
#text(weight: "bold", size: 11pt, fill: primary)[Education]
#v(-4pt)
#line(length: 100%, stroke: 0.5pt + gray)

#grid(
  columns: (1fr, auto),
  [*M.Sc. in Electronics and Telecommunications* \ _CICESE_],
  [Aug 2019 — Mar 2022]
)
#v(1pt)
- *Thesis:* _Evaluation of encryption overhead in multihop networks for the Internet of Medical Things (IoMT)._ Benchmarked 8 NIST Lightweight Cryptography candidates against AES using TI CC2650 hardware and Renode simulation frameworks.

#v(3pt)

#grid(
  columns: (1fr, auto),
  [*B.Sc. in Electronic Engineering* \ _Instituto Tecnológico de Oaxaca_],
  [Aug 2014 — Aug 2018]
)