#import "../functions.typ": theorem, definition, equ, lets
= Тригонометрическая система, Ортогональность тригонометрической системы и свойства интеграла от периодической функции

#definition()[
  Функциональный ряд

  #equ($ a_0 / 2 + limits(sum)^infinity_(n=1)(a_n cos n x + b_n sin n x), $, id: <eq:eq29>)
  
  где $a_0, a_1, b_1, ..., a_n, b_n, ...$ --- вещественные числа, назывется *тригонометрическим рядом*, а эти числа --- его коэффициентами.
]

#definition()[
  Функции, входящие в состав тригонометрического ряда (@eq:eq29):

  #equ($ 1/2 space, space cos x, space sin x, space cos 2x, space sin 2x, space dots $, id: <eq:eq30>)

  образуют *тригонометрическую систему*.
]

#definition()[
  Функции $f$ и $g$, интегрируемые на $[a, b]$, называют взаимно ортогональными, если 
  $ limits(integral)_a^b f(x) g(x) d x = 0. $
]

#theorem(name: "Теорема (об ортогональности тригонометрической системы)")[
  Любые две функции из тригонометрической системы (@eq:eq30) взаимно ортогональны на отрезке $[-pi;pi]$.
][
  $ limits(integral)_(-pi)^pi 1/2 cos k x d x = 1/(2k) sin k x space #line(end: (0pt, 26pt), stroke: 0.5pt + black)_(space -pi)^(space pi) = 0; \
  limits(integral)_(-pi)^pi 1/2 sin k x d x = - 1/(2k) cos k x space #line(end: (0pt, 26pt), stroke: 0.5pt + black)_(space -pi)^(space pi) = 0; \
  limits(integral)_(-pi)^pi cos k x cos n x d x = 1/2 limits(integral)_a^b (cos (k+n) x cos (k-n) x) d x = \ = 1/2 ((sin (k+n) x) / (k+n) + (sin (k-n) x) / (k-n)) space script(#line(end: (0pt, 26pt), stroke: 0.5pt + black))_(space -pi)^(space pi) = 0, space k != n. $

  Аналогично

  $ limits(integral)_(-pi)^pi sin k x sin n x d x = limits(integral)_(-pi)^pi sin k x cos n x d x = 0, space k != n. $
]

#definition()[
  $R_(2pi)$ --- класс $2pi$-периодических функций, определённых на $RR$ и интегрируемых на каждом конечном отрезке $RR$.
]

#theorem()[
  Если $f in R_(2pi)$, то для любого $a in RR$

  $ limits(integral)_a^(a+2pi) f(x) d x = limits(integral)_0^(2pi) f(x) d x. $
][]

#theorem()[
  Если $2 pi$-периодическая функция $f$ разлагается в равномерно сходящийся ряд (@eq:eq29), то его коэффициенты вычисляются по формулам

  $
    a_0 = 1/pi limits(integral)_(-pi)^pi f(x) d x, "  "
    a_n = 1/pi limits(integral)_(-pi)^pi f(x) cos n x d x, "  "
    b_n = 1/pi limits(integral)_(-pi)^pi f(x) sin n x d x.
  $
][]
