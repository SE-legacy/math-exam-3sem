#import "../functions.typ": theorem, equ
= Теорема Вейерштрасса о равномерном приближении непрерывной на отрезке функции алгебраическими многочленами

#theorem(
	name: "Теорема (первая теорема Вейерштрасса)",
	breakline: true
)[
  Если функция $f$ определена и непрерывна на отрезке $[a,b]$, то для любого $epsilon > 0$ найдется алгебраический многчлен $P_epsilon$ такой, что при всех $x in [a,b]$ выполняется неравенство $abs(f(x) - P_epsilon (x)) < epsilon$.
][
  Построим функцию

  $ phi (t) = f (a + (b - a)/pi t), space forall t in [0, pi]. $

  Продолжим ее четным образом на промежуток $[-pi, 0)$, т.е.

  $ phi (t) = phi (-t), space forall t in [-pi, 0]. $

  Далее, продолжим эту функцию на всю числовую прямую периодически с периодом $2 pi$, т.е.

  $ phi (t + 2 pi n) = phi (t), space forall t in RR and forall n in ZZ $

  Очевидно, что $2 pi$-периодическая функция $phi (t)$ непрерывна на все числовой прямой. Мы можем воспользоваться второй теоремой Вейерштрасса.

  Пусть $epsilon > 0$. Тогда найдется тригонометрический многочлен $T_epsilon$ такой, что $forall t in RR$ выполняется неравенство

  #equ($ abs(phi(t) - T_epsilon (t)) < epsilon/2. $, id: <eq:eq53>)

  Тригонометрический многочлен разлагается в степенной ряд

  $ T_epsilon (t) = limits(sum)_(k = 1)^infinity a_k t^k $

  с бесконечным радиусом сходимости. На отрезке $[0, pi]$ (как и на любом другом отрезке) ряд сходится равномерно. Поэтому $exists n in NN$, что $forall t in [0, pi]$ выполняется неравенство

  #equ($ abs(T_epsilon (t) - limits(sum)_(k = 1)^n a_k t^k) < epsilon/2. $, id: <eq:eq54>)

  Обозначим 

  $ P (t) = limits(sum)_(k = 1)^n a_k t^k. $

  Это есть алгебраический многочлен.

  Опираясь на неравенства (@eq:eq53) и (@eq:eq54), получим оценку

  $
    abs(phi (t) - P (t)) = abs((phi (t) - T_epsilon (t)) + (T_epsilon (t) - P (t))) lt.eq\
    lt.eq abs(phi (t) - T_epsilon (t)) + abs(T_epsilon (t) - P (t)) < epsilon/2 + epsilon/2 = epsilon,
  $

  справедливую $forall t in [0, pi]$. Положим теперь

  $ P_epsilon (x) = P ((x - a)/(b - a) pi), space x in [a, b]. $

  Функция $P_epsilon (x)$ является алгебраическим многочленом. Поскольку при $x in [a, b]$

  $ f(x) = phi ((x - a)/(b - a) pi), $

  то окончательно имеем неравенство

  $ abs(f (x) - P_epsilon (x)) < epsilon, space forall x in [a, b]. $
]
