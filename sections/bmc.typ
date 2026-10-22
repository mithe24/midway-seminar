#set text(lang: "en")

#let accent = rgb("#284B63")
#let box-title(body) = text(fill: accent, weight: "bold", body)

= Business model

== Business Model Canvas

#block({
  set text(0.62em)
  set list(spacing: 0.7em)
  set par(justify: false)
  grid(
    columns: (1fr,) * 10,
    stroke: 0.6pt + accent.lighten(50%),
    fill: accent.lighten(92%),
    inset: 5pt,
    grid.cell(colspan: 2, rowspan: 2)[
      #box-title[8\. Key partners]
      - SDU IT and campus maintenance
      - Room data
      - SDU staff for testing
    ],
    grid.cell(colspan: 2)[
      #box-title[7\. Key activities]
      - Development and operations
      - Onboarding
      - Hosting, security and GDPR
      - Support
    ],
    grid.cell(colspan: 2, rowspan: 2)[
      #box-title[2\. Value propositions]
      - Scan QR, report an issue in 30 sec.
      - No app and no login
      - One task list for maintenance
      - Faster map of rooms with issues
      - Faster repairs
      - Less friction for reports
    ],
    grid.cell(colspan: 2)[
      #box-title[4\. Customer relationships]
      - Help getting started
      - Support included in subscription
      - Feedback shapes the product
    ],
    grid.cell(colspan: 2, rowspan: 2)[
      #box-title[1\. Customer segments]
      - Payer: university facilities departments
      - Users:
        - Students and teachers
        - Maintenance staff
    ],
    grid.cell(colspan: 2)[
      #box-title[6\. Key resources]
      - Platform: API, app and map
      - Developers
      - Map data (geojson)
    ],
    grid.cell(colspan: 2)[
      #box-title[3\. Channels]
      - Pilot at SDU
      - Direct sales to facilities departments
      - IT and technical
    ],
    grid.cell(colspan: 5)[
      #box-title[9\. Cost structure]
      - Development and maintenance (largest)
      - Hosting
      - Sales and onboarding
      - Printing QR signs
    ],
    grid.cell(colspan: 5)[
      #box-title[5\. Revenue streams]
      - Annual subscription
      - Setup fee
    ],
  )
})
