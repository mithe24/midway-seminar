#import "../figures/architecture_figure.typ": architecture-diagram
#set text(lang: "en")

#set cite(style: "ieee")
#show bibliography: none
#bibliography("../references.bib", style: "ieee")

#let accent = rgb("#284B63")
#let box-title(body) = text(fill: accent, weight: "bold", body)

= Architecture
== Architecture Overview
imap consists of a Python REST backend, a Rust/WASM map rendering engine, and
two React frontends. The frontends are reference implementations.

#align(center, architecture-diagram(diagram-scale: 0.7))

== Backend
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    *Responsibilities*
    - A simple CRUD application for spaces, rooms, bookings, and tickets.
    - Handles users and roles.
  ],
  [
    *Design choices*
    - Built with Django, chosen for maximum ease of development.
    - The cost is using a full framework where a lighter one might do.
      For an MVP, development speed matters more.
    - A single REST API.
  ],
)

== Frontend
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    *Needs*
    - Integrate with existing frontend ecosystem.
    - Customers likely prefer a solution integrated into the systems they
      already use over a separate app.
  ],
  [
    *Two example applications*
    - *imap-frontend-users:* find rooms, book rooms, and report issues from
      the map.
    - *imap-frontend-management:* the admin view, with the ticket system and
      the map, plus a map with a HUD showing room status.
    - Both are React apps. They call the backend over REST and install the
      map engine as an npm package.
  ],
)

== Map Rendering Engine
#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    *What it is*
    - A Rust library built on wgpu, compiled to WebAssembly.
    - Published as an npm package, so it drops into any JavaScript frontend.
    - Takes indoor map data in IMDF (Indoor Mapping Data Format),@ogc_imdf which is
      GeoJSON-based, and draws it on the GPU of the user's device.
    - Handles interaction with the map, e.g. selecting a room.
  ],
  [
    *Why this approach*
    - *Performance:* GPU rendering copes with large, multi-floor buildings.
    - *Cost:* rendering happens on the client, not on our servers.
    - *Integration:* an npm package fits into a customer's existing frontend.
    - *Open standard:* IMDF avoids a proprietary map format.@ogc_imdf
    - *Trade-off:* a more complex build.
  ],
)

#footnote[
  #cite(<ogc_imdf>, form: "full")
]
