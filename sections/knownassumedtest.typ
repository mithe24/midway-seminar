#let accent = rgb("#284B63")
#let box-title(body) = text(fill: accent, weight: "bold", body)
= Known vs. Assumed vs. Test
== Assumptions and testing
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1em,
  [
    *Known*
    - SDU already has an existing app for navigation.
    - Students, teachers and visitors need a map to navigate.
    - Classrooms and facilities sometimes have issues that need fixing.
  ],
  [
    *Assumed*
    - Current SDU map is difficult to use.
    - Our solution would improve navigation.
    - Users would scan the QR codes.
    - Our solution would improve the experience of reporting.
    - SDU would be interested.
  ],
  [
    *To Test*
    - Interview students.
    - Compare navigation.
    - Test QR codes and reporting.
    - Trial complete flow.
  ],
)

