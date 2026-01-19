#import "../functions.typ": theorem, consequence, property

= Интегрирование функций комплексного переменного. Свойства интеграла

== Определение интеграла от функции комплексного переменного
Пусть $gamma: [a,b] arrow CC$ --- гладкий путь, а непрерывная функция $f$ определена на $gamma$. *Интегралом от функции* $f$ *вдоль пути* $gamma$ называют:
$
  limits(integral)_gamma f(z) d z = limits(integral)_a^b f(gamma(t))gamma'(t) d t,
$
где интеграл от комплексной функции $f(gamma(t))gamma'(t) = g_1(t) + i g_2(t), space t in RR$ понимается как
$
  limits(integral)_a^b g_1(t) d t + i limits(integral)_a^b g_2(t) d t.
$

*Интеграл по кусочно гладкому пути* определим как сумму интегралов по его гладким кускам.

Выразив $f = u + i v$, $gamma' = gamma'_1+i gamma'_2$, получим
$
  limits(integral)_gamma f(z) d z = limits(integral)_gamma u d x - v d y + i limits(integral)_gamma v d x + u d y.
$

== Свойства интеграла
Пусть $gamma_1, gamma_2, gamma = gamma_1 union gamma_2$ --- кусочно гладкие пути, а $f, g$ определены и непрерывны на $gamma$.

#property(name: "Линейность")[$forall alpha, beta in CC$ $
limits(integral)_gamma (alpha f(z) + beta g(z)) d z = alpha limits(integral)_gamma f(z) d z + beta limits(integral)_gamma g(z) d z.
$][]

#property(name: "Аддитивность")[$
limits(integral)_(gamma_1 union gamma_2) f(z) d z = limits(integral)_gamma_1 f(z) d z + limits(integral)_gamma_2 f(z) d z.
$][]

#property(name: "Оценка интеграла")[$
abs(limits(integral)_gamma f(z) d z) <= limits(integral)_gamma abs(f(z)) d z,
$ где справа криволинейный интеграл I рода.
][
  Пусть $J = limits(integral)_gamma f(z) d z = abs(J)e^(i phi)$. Так как $abs(J) = J e^(-i phi) =>$
  $
    abs(J) = limits(integral)_gamma e^(-i phi) f(z) d z = limits(integral)_a^b e^(-i phi) f(gamma(t))gamma'(t)d t in RR ==>
  $
  $
   abs(J) = limits(integral)_a^b R e{e^(-i phi) f(gamma(t))gamma'(t)d t} <= limits(integral)_a^b abs(f(gamma(t)))abs(gamma'(t))d t = limits(integral)_gamma abs(f(z)) d z.
  $
]

#consequence()[
  Если в предыдущей теореме $exists M in RR$ $forall z in gamma$ $abs(f(z)) <= M$, то 
  $
    abs(limits(integral)_gamma f(z) d z) <= M abs(gamma)
  $
  (через $abs(gamma)$ мы обозначем длину пути $gamma$).
][]

#theorem()[
  Пусть путь $gamma^-:space gamma^-(t)=gamma(a+b-t),space t in [a,b] =>$ $
    limits(integral)_(gamma^-) f(z) d z = - limits(integral)_gamma f(z) d z,
  $ а путь $gamma^-$ называют *противоположно ориентированным* к $gamma$.
][]
