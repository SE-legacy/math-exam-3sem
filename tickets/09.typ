#import "../functions.typ": theorem
= Теорема Римана-Лебега

#theorem(
	name: "Теорема Римана-Лебега",
	breakline: true
)[
  Пусть функция $f$ интегрируема на отрезке $[a,b]$. Тогда

  $ lim_(|lambda| -> + infinity) limits(integral)_a^b f(t) sin lambda t d t = 0, lim_(|lambda| -> + infinity) limits(integral)_a^b f(t) cos lambda t d t = 0 $
][
  Док-во не надо
]

