#let theorem_end = text => stack(dir: ltr, text, align(right)[
  $qed$
])

#let block_base = (name, breakline, content) => {
  [*#name*.]
  if breakline {
    parbreak()
    content
  } else {
    h(5pt)
    content
  }
}
#let block_proofable = (name, breakline, wording, proof, ending) => {
  block_base(name, breakline, {
    wording
    if proof != [] {
      par[*Доказательство*:]
      proof
      theorem_end(ending)
    }
  })
}

#let theorem = (
  name: "Теорема",
  ending: "Теорема доказана.",
  breakline: false,
  wording,
  proof,
) => block_proofable(name, breakline, wording, proof, ending)

#let definition = (
  name: "Определение",
  breakline: false,
  content,
) => block_base(name, breakline, content)

#let consequence = (
  name: "Следствие",
  ending: "Доказано.",
  breakline: false,
  wording,
  proof,
) => block_proofable(name, breakline, wording, proof, ending)

#let lemma = (
  name: "Лемма",
  ending: "Лемма доказана.",
  breakline: false,
  wording,
  proof,
) => block_proofable(name, breakline, wording, proof, ending)


#let property = (
  name: "Свойство",
  ending: "Доказано.",
  breakline: false,
  wording,
  proof,
) => block_proofable(name, breakline, wording, proof, ending)

#let lets = box(
  " ",
  stroke: (
    top: 0.5pt,
    left: none,
    right: 0.5pt,
    bottom: 0.5pt,
  ),
  width: 4pt,
  height: auto,
  fill: none,
  inset: 2pt,
  baseline: 15%,
)

// Функция для нумерования формул #eq($y = x$, id: <eq:eq1>)
#let equ(eq, id: none) = {
  let body = if type(id) == none { eq } else if type(id) == label [#eq #id] else [#eq <#id>]
  let numbering = if type(id) != none { "(1)" } else { none }
  set math.equation(numbering: numbering, supplement: [])
  body
}
