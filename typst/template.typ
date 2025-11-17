// Template for Introduction to Probability Solutions
// Migrated from LaTeX to Typst

#let solution-manual(
  title: "Introduction to Probability",
  subtitle: "Solution Manual",
  body
) = {
  // Set document properties
  set document(
    title: title,
    author: "Community Contributors"
  )

  // Set page properties
  set page(
    paper: "us-letter",
    margin: (x: 1.5cm, y: 2cm),
    numbering: "1",
  )

  // Set text properties
  set text(
    font: "Linux Libertine",
    size: 12pt,
    lang: "en"
  )

  // Set paragraph properties
  set par(
    justify: true,
    leading: 0.65em,
  )

  // Heading styles
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    block(
      width: 100%,
      text(size: 20pt, weight: "bold", it.body)
    )
    v(1em)
  }

  show heading.where(level: 2): it => {
    block(
      width: 100%,
      text(size: 16pt, weight: "bold", it.body)
    )
    v(0.5em)
  }

  show heading.where(level: 3): it => {
    block(
      width: 100%,
      text(size: 14pt, weight: "bold", it.body)
    )
    v(0.3em)
  }

  // Configure links
  show link: set text(fill: rgb("#0000EE"))

  // Title page
  align(center)[
    #v(2cm)
    #text(size: 24pt, weight: "bold")[#title]
    #v(0.5cm)
    #text(size: 18pt)[#subtitle]
    #v(1cm)
    #datetime.today().display()
  ]

  pagebreak()

  // Table of contents
  outline(
    title: "Table of Contents",
    depth: 2,
    indent: true
  )

  pagebreak()

  // Main body
  body
}

// Math helpers (equivalent to LaTeX shortcuts)
#let ri = $integral_(-infinity)^(infinity)$
