#let resume(name: "", contactInfo: (), body) = {
  set text(font: "New Computer Modern", lang: "en")

  set document(author: name, title: name + "'s Resume")
  set page("us-letter", margin: (x: 0.5in, y: 0.5in))

  set text(9.5pt)
  set list(indent: 7pt)

  show heading.where(level: 1): it => text(16pt, weight: "bold", it.body)

  show heading.where(level: 2): it => block[
    #text(9.5pt, weight: "bold", upper(it.body))
    #v(weak: true, 5pt)
    #line(length: 100%, stroke: 0.4pt)
  ]

  set align(center)
  
  heading(name)
  v(weak: true, 8pt)
  stack(dir: ltr, spacing: 5pt,
    for (idx, info) in contactInfo.enumerate() [
      #info
      #if idx + 1 != contactInfo.len() {
        "⋄"
      }
    ]
  )

  set align(left)
  
  body
}

#let skillsTable(content: ()) = {
  grid(
    columns: (80pt, auto),
    row-gutter: 5pt,
    ..content
  )
}

#let workItem(role: "", company: "", when: "", description: []) = {
  strong(role)
  h(1fr)
  when
  linebreak()
  v(weak: true, 5pt)
  company
  linebreak()
  description
} 

#let projectItem(name: "", when: "", writeup: [], description: [], isDigital: true) = {
    strong(name)
    h(6pt)
    when
    if isDigital [
      #h(1fr)
      #writeup
    ]
    linebreak()
    description
}
