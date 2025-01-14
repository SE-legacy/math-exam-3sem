#import "../functions.typ": theorem, equ
= Теормеа Фейера


#theorem(
	name: "Теорема (Фейера)",
	breakline: true
)[
  Если функция $f in C_(2 pi)$, то последовательность средних Фейера $(sigma_n)$ равномерно сходится к функции $f$
][
  Если $f$ $2pi$-переодическая и непрерывная, то она равномерно непрерывная и ограниченная. Пусть $epsilon > 0$. Тогда найдется $delta > 0$ такое, что при всех $x in RR$ выполняется неравенство

  $ | f(x + t) + f(x - t) - 2 f(x) | < epsilon. $

  И пусть число $M > 0$ такое, что при всех $x in RR$ $| f(x) | lt.eq M$. Тогда

  $
    | sigma_n (x) - S | lt.eq 1/pi limits(integral)_0^pi | f(x + t) + f(x - t) - 2 S | Ф_n (t) d t =\ 
    = 1/pi limits(integral)_0^delta | f(x + t) + f(x - t) - 2 S | Ф_n (t) d t + 1/pi limits(integral)_delta^pi | f(x + t) + f(x - t) - 2 S | Ф_n (t) d t lt.eq\
    lt.eq epsilon/pi limits(integral) Ф_n (t) d t + (4 M)/pi limits(integral)_delta^pi Ф_n (t) d t lt.eq epsilon/2 (4 M (pi - delta))/(pi 2 (n + 1) sin^2 delta/2) <\
    < epsilon/2 + (2 M)/((n + 1) sin^2 delta/2).
  $
]
