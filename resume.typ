#import "template.typ": *

#show: resume.with(
  name: "Liam Rosenfeld",
  contactInfo: (
    link("mailto://me@liamrosenfeld.com")[me\@liamrosenfeld.com],
    link("https://liamr.dev")[liamr.dev],
    "407-864-0452"
  )
)

#let isDigital = true

== Skills

#skillsTable(
  content: (
    strong("Languages"),
    "Swift, Rust, Objective-C, C++, C, Python, ARM, X86, & AVR Assembly, Typescript, SQL, VHDL",
    
    strong("Frameworks"),
    "SwiftUI, AppKit, UIKit, Accelerate, Axum, Vue, Svelte",
    
    strong("Tools"),
    "macOS, Linux, Git, Xcode Instruments, Web Assembly, Docker, MongoDB, LaTeX"
  )
)

== Education

*BS in Computer Engineering*, University of Florida
#h(1fr) Class of 2025 #linebreak()
GPA: 3.98, Minor in Mathematics, Honors Program, University Scholars Program

== Work History

#workItem(
  role: "Software Engineering Intern",
  company: "Apple",
  when: "Summer 2024",
  description: [
    - On the Productivity Apps team responsible for canvas, editing, and core infrastructure
    - Designed and implemented a feature to address a highly requested use case
    - Developed and verified a collection of geometric algorithms
  ]
)

#workItem(
  role: "Software Engineering Intern",
  company: "Apple",
  when: "Summer 2023",
  description: [
    - On the Productivity Apps team responsible for canvas, editing, and core infrastructure
    - Built a highly requested feature for Keynote, Pages, and Numbers on macOS, iOS, and Web
    - Wrote a specification to define the behavior of the feature and its implementation
    - Debugged a complex UI framework
  ]
)

#workItem(
  role: "Backend Software Engineer",
  company: "Parametic Capital",
  when: "Summer 2022",
  description: [
    - Built a server to collect, aggregate, and serve time series metrics to a visualization frontend using Rust
  ]
)

== Research

#projectItem(
  name: "Lilypad",
  when: "2021-Present",
  writeup: [#link("https://ieeexplore.ieee.org/document/10305659")[Paper], #link("https://liamrosenfeld.com/projects/lilypad/")[Writeup]],
  description: [
    - Building a text-based visual code editor to improve programming education
    - First author for showpiece paper in the 2023 IEEE Symposium on Visual Languages and Human-Centric Computing
    - Building using Rust to run native and in Web Assembly
  ]
)

== Select Projects

#if not isDigital [
  #v(weak: true, 4pt)
  Writeups on my website
  #v(weak: true, 8pt)
]

#projectItem(
  name: "NaviGator",
  when: "Released 2023",
  writeup: link("https://liamrosenfeld.com/projects/navigator/")[Writeup],
  description: [
    - Third party mobile app for the Gainesville bus system with over five thousand daily active users
    - Built in a team of two, my responsibility is the live map (built with MapKit) and data fetching
  ],
  isDigital: isDigital
)

#projectItem(
  name: "UF Cat Tracker",
  when: "Built 2022",
  writeup: link("https://liamrosenfeld.com/projects/cat-tracker/")[Writeup],
  description: [
    - Website so students can crowdsouce the location of friendly campus cats to pet
    - Built in a team of four using Rust, React, and PostgreSQL for ease of development and stability
  ],
  isDigital: isDigital
)

#projectItem(
  name: "Iconology",
  when: "Released 2020",
  writeup: link("https://liamrosenfeld.com/projects/iconology")[Writeup],
  description: [
    - macOS app to streamline the process of icon generation with 6.5k downloads
    - Built using AppKit, CoreGraphics, and SwiftUI
  ],
  isDigital: isDigital
)

#projectItem(
  name: "Raspberry Pi OS",
  when: "Built 2022",
  writeup: link("https://liamrosenfeld.com/projects/rustos/")[Writeup],
  description: [
    - A kernel and basic operating system for a Raspberry Pi built in Rust
    - Implemented booting, GPIO, UART, chainloading, allocation, and a Fat32 filesystem
  ],
  isDigital: isDigital
)

#projectItem(
  name: "WWDC Accepted Scholarship Playgrounds",
  when: "2019, 2020",
  writeup: [
    #link("https://liamrosenfeld.com/projects/fourier-artist/")[2019 Writeup], 
    #link("https://liamrosenfeld.com/projects/stfourier-explainer/")[2020 Writeup]
  ],
  description: [
    - Visualized the Fourier transform as applied to both art (in 2019) and sound (in 2020)
    - I had an opportunity to discuss my projects with Tim Cook
  ],
  isDigital: isDigital
)

#projectItem(
  name: "Image To ASCII Art",
  when: "Released 2017",
  writeup: link("https://liamrosenfeld.com/projects/ascii-art/")[Writeup],
  description: [
    - iOS and macOS app on the App Store with seventeen thousand downloads
    - Interface built using SwiftUI, UIKit, & AppKit and generation uses Accelerate vImage
  ],
  isDigital: isDigital
)

== Teaching

*Advanced Programming Fundamentals (COP 3504C) TA* #h(1fr) Fall 2022
