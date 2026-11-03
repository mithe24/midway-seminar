#import "@preview/diatypst:0.9.3": *

#show: slides.with(
  title: "imap",
  subtitle: "Indoor Mapping and Maintenance Management Software for Bigger Buildings",
  date: "04.11.2026",
  authors: ("Marcus Olsen", "Mark Johansen", "Mikkel Thestrup"),
  // Options
  count: "number",
  title-color: rgb("#284B63"),
  bg-color: rgb("#F5EFFF"),
  theme: "full",
  footer-subtitle: "Download slides: github@mithe24/midway-seminar",
)

#include "sections/intro.typ"
#include "sections/bmc.typ"
#include "sections/architecture.typ"
#include "sections/knownassumedtest.typ"
#include "sections/mvp.typ"
