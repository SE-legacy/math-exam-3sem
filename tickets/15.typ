#import "../functions.typ": theorem, equ
= Теорема Фейера


#theorem(
	name: "Теорема (Фейера)",
	breakline: true
)[
  Если функция $f in C_(2 pi)$, то последовательность средних Фейера $(sigma_n) arrows f$
][
  Если $f$ $2pi$-периодическая и непрерывная, то она равномерно непрерывная и ограниченная. Пусть $epsilon > 0$. Тогда найдется $delta > 0$ такое, что при всех $x in RR$ выполняется неравенство

  $ abs(f(x + t) + f(x - t) - 2 f(x)) < epsilon. $

  И пусть число $M > 0$ такое, что $forall x in RR$ $abs(f(x)) <= M$. Тогда

  $
    abs(sigma_n (x) - S) <= 1/pi limits(integral)_0^pi abs(f(x + t) + f(x - t) - 2 S) Ф_n (t) d t =\ 
    = 1/pi limits(integral)_0^delta abs(f(x + t) + f(x - t) - 2 S) Ф_n (t) d t + 1/pi limits(integral)_delta^pi abs(f(x + t) + f(x - t) - 2 S) Ф_n (t) d t <=\
    <= epsilon/pi limits(integral) Ф_n (t) d t + (4 M)/pi limits(integral)_delta^pi Ф_n (t) d t <= epsilon/2 (4 M (pi - delta))/(pi 2 (n + 1) sin^2 delta/2) <\
    < epsilon/2 + (2 M)/((n + 1) sin^2 delta/2).
  $

  $exists n_epsilon$ такой, что $forall n > n_epsilon$ выполняется неравенство

  $ (2 M)/((n + 1) sin^2 delta/2) < epsilon/2. $

  Поэтому $forall n > n_epsilon$ и $forall x in RR$ выполняется неравенство

  $ abs(sigma_n (x) - f(x)) < epsilon, $

  т.е. $sigma_n arrows f$.
]
