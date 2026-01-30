#import "../functions.typ": theorem, equ
= Теорема о суммируемости ряда Фурье методом средних арифметических в точках разрыва

#theorem(
	name: "Теорема (о суммируемости ряда Фурье методом средних арифметических в точках разрыва)",
)[
Пусть функция $f in R_(2 pi)$ и в точке $x$ существует предел

$ lim_(t -> 0) (f(x + t) + f(x - t))/2 = S. $

Тогда в точке $x$

$ lim_(n -> infinity) sigma_n (x) = S. $
][
  Пусть $epsilon > 0$. Тогда $exists delta > 0$ такое, что при всех $t in (0, delta)$ выполняется неравенство

  $ abs((f(x + t) + f(x - t))/(2) - S) < epsilon. $

  Тогда, используя равенства:

  $ sigma_n (x) = 1/pi limits(integral)_0^pi (f(x + t) + f(x - t)) Ф_n (t) d t, $

  $ Ф_n (t) = (limits(sum)_(k = 0)^n D_k (t))/(n + 1) = (sin^2 ((n + 1)/2) t)/(2 (n + 1) sin^2 t/2), $

  $ 2/pi limits(integral)_0^pi Ф_n (t) d t = 1, $

  получим оценку
  
  $
    abs(sigma_n (x) - S) <= 1/pi limits(integral)_0^pi abs(f(x + t) + f(x - t) - 2 S) Ф_n (t) d t =\
    = 1/pi limits(integral)_0^delta abs(f(x + t) + f(x - t) - 2 S) Ф_n (t) d t + 1/pi limits(integral)_delta^pi abs(f(x + t) + f(x - t) - 2 S) Ф_n (t) d t <=\
    <= 1/pi 2 epsilon limits(integral)_0^pi Ф_n (t) d t + 1/(pi 2 (n + 1) sin^2 delta/2) limits(integral)_0^pi abs(f(x + t) + f(x - t) - 2 S) d t =\
    = epsilon + 1/(pi 2 (n + 1) sin^2 delta/2) limits(integral)_0^pi abs(f(x + t) + f(x - t) - 2 S) d t.
  $

  Поскольку интеграл

  $ limits(integral)_0^pi abs(f(x + t) + f(x - t) - 2 S) d t $

  представляет собой конкретное конечное число, то найдется номер $n_epsilon$ такой, что при всех $n > n_epsilon$ выполняется неравенство

  $ 1/(pi 2 (n + 1) sin^2 delta/2) limits(integral)_0^pi abs(f(x + t) + f(x - t) - 2 S) d t < epsilon. $

  Тогда при всех $n > n_epsilon$ окончательно имеем $abs(sigma_n (x) - S) < 2 epsilon$.
]
