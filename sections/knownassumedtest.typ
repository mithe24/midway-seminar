#let accent = rgb("#284B63")
#let box-title(body) = text(fill: accent, weight: "bold", body)
= Known vs. Assumed vs. Test
== Assumptions and testing
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 1em,
  [
    *Known*
    - SDU's current issue reporting is manual/email-based.
    - Classrooms and facilities sometimes have issues that need fixing.
    - Students, teachers and visitors need a system for reporting issues.
  ],
  [
    *Assumed*
    - Users would would prefer QR codes over emails.
    - Our solution would improve reporting speeds.
    - Maintenance staff would benefit from structured tickets.
    - SDU would be interested.
  ],
  [
    *To Test*
    - Interview students and staff.
    - Measure time saved per report.
    - Trial the complete flow.
  ],
)

