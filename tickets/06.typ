#import "../functions.typ": theorem, definition, equ
биба мля
= Тригонометрическая система, Ортогональность тригонометрической системы и свойства интеграла от периодической функции

#definition(breakline: true)[Функциональный ряд:

  #equ($ a_0 / 2 + (a_n cos n x + b_n sin n x), space forall n in NN space a_0, a_n, b_n in RR, $, id: <eq:eq29>)

  назывется *тригонометрическим рядом*, а числа $a_0, a_n, b_n$ --- его коэффициенты.
]

#definition(breakline: true)[Функции, входящие в состав тригонометрического ряда:

  #equ($ 1 / 2, cos x, sin x, cos 2x, sin 2x, dots $, id: <eq:eq30>)

  образуют *тригонометрическую систему*.
]

#definition(breakline: true)[
  $ forall f, g in Re_([a,b]) space f perp g space (f space "и" space g "взаимно ортогональны") <=> limits(integral)_a^b f(x) g(x) dif x = 0 $
]

#theorem(name: "Теорема" + text(" (об ортогональности тригонометрической системы)", style: "italic"),breakline: true)[
  #set align(center)
    $forall f, g in$ (@eq:eq30) $space f perp g space "на" space [-pi;pi]$
  #set align(left)
][
  $ limits(integral)_(-pi)^pi 1/2 cos k x dif x = 1/(2k) sin k x space script(#line(end: (0pt, 26pt), stroke: 0.5pt + black))_(space -pi)^(space pi) = 0; $

  $ limits(integral)_(-pi)^pi 1/2 sin k x dif x = - 1/(2k) cos k x space script(#line(end: (0pt, 26pt), stroke: 0.5pt + black))_(space -pi)^(space pi) = 0; $

  $ limits(integral)_(-pi)^pi cos k x cos n x dif x = 1/2 limits(integral)_a^b (cos (k+n) x cos (k-n) x) dif x = \ = 1/2 ((sin (k+n) x) / (k+n) + (sin (k-n) x) / (k-n)) space script(#line(end: (0pt, 26pt), stroke: 0.5pt + black))_(space -pi)^(space pi) = 0, space k eq.not n; $

  Аналогично:

  $ limits(integral)_(-pi)^pi sin k x sin n x dif x = limits(integral)_(-pi)^pi sin k x cos n x dif x = 0, space k eq.not n. $
]

#definition(breakline: true)[
  $R_(2pi)$ --- класс $2pi$-периодических функций, определённых на $RR$ и интегрируемых на каждом конечном отрезке $RR$.
]

#theorem(breakline: true)[
  $ f in R_(2pi) => forall a in RR space limits(integral)_a^(a+2pi) f(x) dif x = limits(integral)_0^(2pi) f(x) dif x. $
][]

#theorem(breakline: true)[
  $f - 2pi"-периодическая" and f "разлагается в равномерно сходящийся ряд"$ (@eq:eq29), то $
    a_0 = 1/pi limits(integral)_(-pi)^pi f(x) dif x,\
    a_n = 1/pi limits(integral)_(-pi)^pi f(x) cos n x dif x,\
    b_n = 1/pi limits(integral)_(-pi)^pi f(x) sin n x dif x.
  $
][]
