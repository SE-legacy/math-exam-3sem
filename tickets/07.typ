#import "../functions.typ": theorem, definition
= Тригонометрический ряд. Коэффициенты Фурье и ряд Фурье. Ядро Дирихле

#definition(breakline: true)[
  $f in Re_([-pi;pi]) => forall n in NN space a_0, a_n, b_n$ --- *коэффициенты ряда Фурье*, а ряд:
   $
    a_0/2 + limits(sum)_(n=1)^infinity (a_n cos n x + b_n sin n x)
   $
   называют *рядом Фурье*.
]

#theorem(name: "Лемма", breakline: true)[
  $
    1/2 + cos alpha + cos 2alpha + dots + cos n alpha = (sin (2n+1)/2 alpha)/(2sin alpha / 2). 
  $
][
  Положим $S = 1/2 + cos alpha + cos 2alpha + dots + cos n alpha$, умножим обе части этого равенства на $2sin alpha / 2$. Тогда:
  $
    2S sin alpha / 2 = sin alpha / 2 + 2sin alpha / 2 cos alpha / 2 + dots + 2 sin alpha / 2 cos n alpha. 
  $
  Так как $2sin A cos B = sin(A+B)-sin(B-A)$, то:
  $
    2S sin alpha / 2 = sin alpha / 2 + (sin 3/2alpha - sin alpha / 2) + (sin 5/2alpha - sin 3/2 alpha) + dots +\
    + (sin (2n+1)/2 alpha - sin (2n-1)/2 alpha) = sin (2n+1)/2 alpha.
  $
  Итак, $forall alpha != 2pi k, space k in ZZ:$
  $
   S = (sin (2n+1)/2 alpha)/(2sin alpha / 2),
  $
  а при $alpha = 2pi k, space k in ZZ$ будем понимать равенство в предельном смысле:
  $
    limits(lim)_(alpha arrow 2pi k)(1/2 + cos alpha + cos 2alpha + dots + cos n alpha) = limits(lim)_(alpha arrow 2pi k)(sin (2n+1)/2 alpha)/(2sin alpha / 2) = (2n+1)/2.
  $
]

#definition(breakline: true)[
  Функцию:
  $
    D_n (x) = 1/2 + cos x + cos 2x + dots + cos n x = (sin (2n+1)/2 x)/(2sin x / 2)
  $
  называют *ядром Дирихле*.
]
