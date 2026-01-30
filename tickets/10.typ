#import "../functions.typ": theorem
= Принцип локализации Римана

#theorem(
	name: "Теорема (принцип локализации Римана)",
	breakline: true
)[
  Пусть функция $f in R_(2 pi)$. Тогда  $forall a in (0, pi)$ частная сумма ряда Фурье функции $f$ может быть представлена в следующем виде

$ S_n (x) = 1/pi limits(integral)_0^a (f(x + t) + f(x - t)) (sin (2 n + 1)/2 t)/(2 sin t/2) d t + alpha_n (x), $

где

$ alpha_n (x) -> 0 " при " n -> infinity $
][
  Представим правую часть равенства $S_n (x) = 1/pi limits(integral)_0^pi (f(x + t) + f(x - t)) D_n (t) d t, space x in RR$ в виде суммы двух интегралов

  $
  S_n(x) = 1/pi limits(integral)_0^pi (f(x + t) + f(x - t)) (sin (2 n + 1)/2 t)/(2 sin t/2) d t =\
  +  1/pi limits(integral)_0^a (f(x + t) + f(x - t)) (sin (2 n + 1)/2 t)/(2 sin t/2) d t +\
  +  1/pi limits(integral)_a^pi (f(x + t) + f(x - t)) (sin (2 n + 1)/2 t)/(2 sin t/2) d t .
  $

  обозначим 

  $ alpha_n(x) = 1/pi limits(integral)_a^pi (f(x + t) + f(x - t)) (sin (2 n + 1)/2 t)/(2 sin t/2) d t $

  На отрезке $[a, pi]$ функция $sin t/2$ непрерывна и справедлива оценка

  $ abs(sin t/2) gt.eq sin a/2 > 0 $

  Поэтому функция

  $ (f(x + t) + f(x - t))/(sin t/2) $

  интегрируема на отрезке $[a, pi]$. Тогда по теореме Римана-Лебега $alpha_n(x) -> 0$ при $n -> infinity$
]
