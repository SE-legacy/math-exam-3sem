#import "../functions.typ": theorem, consequence, equ
= Теорема Вейерштрасса о равномерном приближении непрерывной $2pi$-периодический функции тригонометрическими многочленами.

#theorem(name: "Теорема (вторая теорема Вейерштрасса)", breakline: true)[
  $ f - 2pi"-периодическая и непрерывная" => exists (T_n) arrows f space "на" space RR, \ (T_n) - "последовательность тригонометрических многочленов." $ 
][
  В качестве $(T_n)$ возьмём $(sigma_n)$, которая по теореме Фейера равномерно сходится к $f$.
]

*Другие формулировки теоремы.*

#consequence(breakline: true)[
  $ f - 2pi"-периодическая и непрерывная" => forall epsilon > 0 space exists T_epsilon space forall x in RR space abs(f(x)-T_epsilon (x)) < epsilon, \
  T_epsilon - "тригонометрический многочлен." $ 
][]

#consequence(breakline: true)[
  $ f - 2pi"-периодическая и непрерывная" =>$ она разлагается в равномерно сходящийся ряд из тригонометрических многчленов. 
][
  Пусть $(T_n) arrows f$. Положим $forall n in NN$:
  $ Q_1 (x) = T_1 (x), space Q_n (x) = T_n (x) - T_(n-1)(x). $
  Ясно, что $Q_n (x)$ --- тригонометрические многочлены,
  $ f(x) = limits(sum)_(n=-1)^infinity Q_n (x) $
  и ряд равномерно сходится.
]