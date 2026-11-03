#let accent = rgb("#284B63")
#let box-title(body) = text(fill: accent, weight: "bold", body)
= Minimum Viable Product
== Core features
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 1em,
  [
    *QR Codes in Rooms*
    - Physical QR Codes in a subset of rooms, with encoded location data.
  ],
  [
    *App-Free Reporting*
    - A web interface that opens on the user's phone on QR code scan.
    - Auto-fills room and building data.
    - Input for category and optional photo of issue.
  ],
  [
    *Maintenance Dashboard*
    - Simple admin view
    - Map that shows places with active issues.
  ],
  [
    *Backend CRUD & Map Engine*
    - Django API handling tickets, location data, and user roles.
    - Map Rendering Engine rendering indoor building layouts using GeoJSON/IMDF.
  ],
)
== Omissions and testing
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    *Omissions*
    - Deep integration with software already in use.
    - Focus on keeping the web interface and dashboard standalone.
    - Utilizing Django for faster development times.
    - Accepting the overhead trade-off.
    - Accepting the difficulties with preventing spam/malicous attacks. 
  ],
  [
    *Validation and testing*
    - Measure whether reporting issues through the web interface cuts down on time spent.
    - Interview students, teachers and visitors to test if they prefer a QR-code solution.
    - Track whether staff experience faster response times and clearer information with the enhanced structure.
  ],
)
