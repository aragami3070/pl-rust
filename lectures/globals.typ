#import "@preview/codly:1.3.0": codly, codly-init, local
#import "@preview/codly-languages:0.1.10": codly-languages
#import "@preview/touying:0.6.3": themes, slide, pause
#import themes.metropolis: metropolis-theme, config-colors, config-info

#let input-codly(file, from, to, lang) = {
  let lines = read(file).split("\n")
  let slice = lines.slice(from - 1, calc.min(to, lines.len()))
  raw(lang: lang, slice.join("\n"), block: true)
}

#let template(doc) = {
  show: metropolis-theme.with(
    config-colors(secondary: rgb("#D34516")),
    aspect-ratio: "16-9",
    align: horizon,
    config-info(
      title: [Rust],
      author: [Никита Рыданов],
      date: datetime.today(),
      institution: [факультет КНиИТ, СГУ],
    ),
  )
  show: codly-init.with()
  show raw.where(lang: "sh"): it => local(
    number-format: none,
    lang-format: none,
    it
  )
  set text(font: "Inter", size: 18pt)
  show raw: set text(size: 16pt, font: "Fira Code")
  show image: it => align(center, it)
  
  codly(languages: codly-languages, zebra-fill: none)
  doc
}
