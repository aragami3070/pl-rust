#let blue = rgb("#2b3fff")
#let red = rgb("#d62828")

#let check-mark-svg(color) = read("check-mark.svg").replace("#ffffff", color.to-hex())

#let check-mark(color, width: auto, height: auto) = image(bytes(check-mark-svg(color)), width: width, height: height)


#let infobox(icon, color, body) = grid(
  columns: (15pt, 4pt, auto),
  rows: (auto, auto),
  column-gutter: 10pt,
  icon,
  grid.cell(fill: color, block()),
  body,
)
