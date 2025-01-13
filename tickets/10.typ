#import "../functions.typ": theorem
= Принцип локализации Римана

#theorem(
	name: "Теорема о принцип локализации Римана",
	breakline: true
)[
  _Пусть функция $f in R_(2 pi)$. Тогда при любом $a in (0, pi)$ частная сумама ряда фурье функции $f$ может быть представлена в следующем виде_

$ S_n (x) = 1/pi limits(integral)_0^a (f(x + t) + f(x - t)) (sin (2 n + 1)/2 t)/(2 sin t/2) d t + alpha_n (x), $

_где_

_$ alpha_n (x) -> 0 " при " n -> infinity $_ 
][
  
]
