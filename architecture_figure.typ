#import "@preview/cetz:0.3.4": canvas, draw

#let architecture-diagram(diagram-scale: 1, font-size: 9pt) = {
  set text(size: font-size * diagram-scale)

  canvas(length: diagram-scale * 1cm, {
    import draw: *

    let line-width = 0.8pt * diagram-scale

    let frontend = (stroke: line-width + black, fill: luma(240))
    let backend = (stroke: line-width + black, fill: luma(220))
    let lib = (stroke: line-width + black, fill: luma(200))
    let arrow = (end: ">", fill: black)

    set-style(stroke: line-width + black)

    // Frontends (top row)
    rect((0, 6), (5.5, 8), name: "users", ..frontend)
    content("users", align(center)[*imap-frontend-users* \ (React)])

    rect((7, 6), (13, 8), name: "mgmt", ..frontend)
    content("mgmt", align(
      center,
    )[*imap-frontend-management* \ (React)])

    // Bus joining both frontends
    line((2.75, 6), (2.75, 4.5))
    line((10, 6), (10, 4.5))
    line((2.75, 4.5), (10, 4.5))

    // Backend (bottom left)
    line((3.25, 4.5), (3.25, 2), mark: arrow)
    rect((1, 0), (5.5, 2), name: "backend", ..backend)
    content("backend", align(center)[*imap-backend* \ Python REST API])
    content(
      (3.05, 3.25),
      align(right)[REST: data, tickets, \ bookings, auth],
      anchor: "east",
    )

    // Rust/WASM map library (bottom right)
    line((9.5, 4.5), (9.5, 2), mark: arrow)
    rect((7, 0), (12, 2), name: "lib", ..lib)
    content("lib", align(
      center,
    )[*Rust/WASM map lib* \ wgpu, GeoJSON \ drawn on user GPU])
    content(
      (9.7, 3.25),
      align(left)[npm package],
      anchor: "west",
    )
  })
}
