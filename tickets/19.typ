#import "../functions.typ": definition, theorem
= Равенство Парсеваля. Сходимость ряда Фурье в среднем квадратичном.

#definition[
  Функции $f$ и $f_n$, $n in NN$, интегрируемы на $[a, b]$. Говорят, что последовательность $(f_n)$ сходится в среднем к функции $f$ на $[a, b]$, если

  $ limits(lim)_(n -> infinity) limits(integral)_a^b (f_n (x) - f(x))^2 d x = 0 $
]

#theorem(
	name: "Теорема (Сходимость ряда Фурье в среднем квадратичном.)",
	breakline: true
)[
  Функция $f in Re_[a, b]$. Тогда $forall epsilon > 0$ $exists g$ --- непрервыная на отрезке функция, принимающая заданные значения в точках $a$ и $b$, что

  $ limits(integral)_a^b (f(x) - g(x))^2 d x < epsilon. $
][
  Рассмотрим произвольное разбиение $P$ отрезка $[a, b]$:

  $ a = x_0 < x_1 < x_2 < ... < x_n = b $

  Пусть $Delta x_i = x_i - x_(i - 1), space i = 1,...,n, space d = max_(1 lt.eq i lt.eq n) Delta x_i$, $omega_i$ --- колебание функции $f$ на $[x_(i-1), x_i]$.

  Т.к. $f$ интегрируема, то она ограничена, т.е. $|f(x)| lt.eq M space forall x in [a, b].$ Согласно критерию интегрируемости

  $ limits(lim)_(d -> 0) limits(sum)_(i = 1)^n omega_i Delta x_i = 0 $

  Определим функцию $g(x)$: на каждом из отрезков $[x_(i - 1), x_i]$ функция $g(x)$ является линейной, принимающей заданные значения в точках $x_0 = a$ и $x_n = b$ и значения $g(x_i) = f(x_i)$ при $i = 1,..., n - 1$. Очевидно $g(x)$ непрерывна на $[a, b]$, и на каждом $[x_(i - 1), x_i]$, $i = 2,..., n - 1$, справедливо неравенство

  $ | f(x) - g(x) | lt.eq omega_i $

  откуда

  $ (f(x) - g(x))^2 lt.eq (|f(x)| + |g(x)|)^2 |f(x) - g(x)| lt.eq 2 M omega_i. $

  На отрезках $[x_0, x_1]$, $[x_n-1, x_n]$ имеем

  $ (f(x) - g(x))^2 lt.eq (|f(x)| + |g(x)|)^2 lt.eq (M + M_1)^2, $

  где $M_1 = max (M, |g(a)|, |g(b)|)$. Поэтому

  $
    limits(integral)_a^b (f(x) - g(x))^2 d x = limits(sum)_(i = 1)^n limits(integral)_(x_(i - 1))^(x_i) (f(x) - g(x))^2 d x lt.eq\
    lt.eq 2 M limits(sum)_(i = 2)^(n - 1) omega_i Delta x_i + 2 (M + M_1)^2 d.
  $

  Правая часть неравенства стремится к нулю при $d -> 0$. Следовательно, $forall epsilon > 0$ надеятся такое разбиение $P$ отрезка $[a, b]$, что

  $ limits(integral)_a^b (f(x) - g(x))^2 d x < epsilon $
]

#theorem(
	name: "Теорема (Равенство Парсеваля.)",
	breakline: true
)[
  Равенство

  $ 1/pi limits(integral)_(-pi)^pi f^2(x) d x = a_0^2/2 + limits(sum)_(k = 1)^infinity (a_k^2 + b_k^2) $

  справедливое $forall f$, интегрируемой на $[-pi,pi]$, называют равенством Парсеваля, или условием замкнутоcти тригонометрической системы.
][]

