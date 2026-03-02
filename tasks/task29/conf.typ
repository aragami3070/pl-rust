#let blue = rgb("#2b3fff")
#let red = rgb("#d62828")


#let infobox(icon, color, body) = grid(
  columns: (15pt, 4pt, auto),
  rows: (auto, auto),
  column-gutter: 10pt,
  icon,
  grid.cell(fill: color, block()),
  body,
)
