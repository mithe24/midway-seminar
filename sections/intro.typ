#set text(lang: "en")

#let accent = rgb("#284B63")
#let bad = rgb("#B23A48")

// One step in the workflow diagram. Painful steps get a red frame.
#let step(body, pain: none) = grid.cell(
  fill: if pain == none { accent.lighten(90%) } else { bad.lighten(90%) },
  stroke: if pain == none { 0.6pt + accent.lighten(50%) } else {
    0.8pt + bad
  },
  inset: 4pt,
  align: horizon,
  {
    body
    if pain != none {
      linebreak()
      text(fill: bad, style: "italic", pain)
    }
  },
)

#let arrow = grid.cell(align: center + horizon, text(fill: accent)[→])

// A swimlane: a role label followed by up to four steps.
#let lane(role, ..steps) = {
  let cells = steps.pos()
  let row = (grid.cell(align: horizon, strong(role)),)
  for (i, s) in cells.enumerate() {
    if i > 0 { row.push(arrow) }
    row.push(s)
  }
  row + ([],) * (8 - row.len())
}

#let band(title, tag, color, ..lanes) = block(
  width: 100%,
  inset: (x: 5pt, y: 4pt),
  stroke: (left: 3pt + color),
  {
    text(fill: color, weight: "bold", title)
    h(1fr)
    text(fill: color, weight: "bold", tag)
    v(-0.2em)
    grid(
      columns: (1.9cm,) + (1fr, 0.35cm) * 3 + (1fr,),
      row-gutter: 5pt,
      ..lanes.pos().flatten(),
    )
  },
)

= Introduction

== Why imap?

#align(center, text(1.1em, style: "italic")[
  "The projector is broken. Who do I tell?"
])

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    / The problem:
      - Unclear who to contact
      - Reports scattered across email and phone
      - Missing room, category and status
      - Maintenance has no overview
  ],
  [
    / Our answer:
      - QR code in every room
      - Report an issue in 30 seconds
      - Room is filled in automatically
      - One overview for maintenance
  ],
)

== From email to QR code

#block({
  set text(0.66em)
  set par(justify: false, leading: 0.45em)
  band(
    [Today],
    [Days · manual work],
    bad,
    lane(
      [Reporter],
      step[Spots the issue],
      step(pain: [Who is it?])[Looks for a contact],
      step[Takes a photo],
      step(pain: [Takes a long time])[Writes a long email],
    ),
    lane(
      [Maintenance],
      step[Receives email],
      step(pain: [Messy format])[Reads through the email],
      step(pain: [Wrong room no.])[Guesses the room],
      step(pain: [Needs a human])[Files it under building and room],
    ),
  )
  v(0.6em)
  band(
    [With imap],
    [30 seconds · automatic],
    accent,
    lane(
      [Reporter],
      step[Spots the issue],
      step[Scans QR code],
      step[Picks category, optional photo],
    ),
    lane(
      [Maintenance],
      step[Task is ready with room, building and category],
      step[Fixes it and updates status],
    ),
  )
  v(1fr)
  align(center, text(1.4em, fill: accent, weight: "bold")[
    8 steps and several days #sym.arrow 5 steps, no manual sorting
  ])
  v(1fr)
})

== The solution

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    - QR code in every room
    - No app, no login
    - Room is filled in automatically
  ],
  [
    - One task list for maintenance
    - Map of rooms with open issues
    - Track your report
  ],
)

#block(height: 1fr, width: 100%, image(
  "../figures/map.png",
  width: 100%,
  height: 100%,
  fit: "contain",
))
