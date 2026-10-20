#import "../figures/architecture_figure.typ": architecture-diagram
#set text(lang: "en")

#let accent = rgb("#284B63")
#let box-title(body) = text(fill: accent, weight: "bold", body)

= Architecture
== Architecture Overview
#figure(
  architecture-diagram(diagram-scale: 0.7),
  caption: [Systems Architecture],
)
