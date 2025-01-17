биба
#set page(height: auto)
#import "../functions.typ": theorem, consequence

= Интегрирование функций комплексного переменного. Свойства интеграла

== Определение интеграла от функции комплексного переменного
Пусть $gamma: [a,b] arrow CC$ --- гладкий путь, а непрерывная $f$ определена на $gamma$. Интегралом от $f$ по контуру $gamma$ называют:
$
  limits(integral)_gamma f(z)dif z = limits(integral)_a^b f(gamma(t))gamma'(t)dif t,
$
где интеграл от комплексной $f(gamma(t))gamma'(t) = g_1(t) + g_2(t), space t in RR$ понимается как
$
  limits(integral)_a^b g_1(t)dif t + i limits(integral)_a^b g_2(t)dif t.
$

Интеграл по кусочно-гладкому контуру определяем индуктивно как сумму интегралов по его гладким кускам.

Выразив $f = u + i v$, $gamma' = gamma'_1+i gamma'_2$, получим
$
  limits(integral)_gamma f(z)dif z = limits(integral)_gamma u dif x - v dif y + i limits(integral)_gamma v dif x + u dif y
$

== Свойства интегралов
Пусть $gamma_1, gamma_2, gamma = gamma_1 union gamma_2$ --- кусочно-гладкие контуры, а $f, g$ определены и непрерывны на $gamma$.

#theorem(name: "Линейность")[$forall alpha, beta in CC$ $
limits(integral)_gamma (alpha f(z) + beta g(z)) dif z = alpha limits(integral)_gamma f(z) dif z + beta limits(integral)_gamma g(z) dif z
$][]

#theorem(name: "Аддитивность")[$
limits(integral)_(gamma_1 union gamma_2) f(z) dif z = limits(integral)_gamma_1 f(z) dif z + limits(integral)_gamma_2 f(z) dif z
$][]

#theorem(name: "Оценка интеграла")[$
abs(limits(integral)_gamma f(z) dif z) lt.eq.slant limits(integral)_gamma abs(f(z)) dif s ","
$ где справа криволинейный интеграл I рода.
][
  Пусть $J = limits(integral)_gamma f(z) dif z = abs(J)e^(i phi)$. Так как $abs(J) = J e^(-i phi) =>$
  $
    abs(J) = limits(integral)_gamma e^(-i phi) f(z) dif z = limits(integral)_a^b e^(-i phi) f(gamma(t))gamma'(t)dif t in RR =>
  $
  $
   abs(J) = limits(integral)_a^b R e{e^(-i phi) f(gamma(t))gamma'(t)dif t} lt.eq.slant limits(integral)_a^b abs(f(gamma(t)))abs(gamma'(t))dif t = limits(integral)_gamma abs(f(z)) dif s.
  $
]

#consequence()[
  Если в предыдущей теореме $exists M in RR space forall z in gamma abs(f(z)) lt.eq.slant M =>0$ $
    abs(limits(integral)_gamma f(z) dif z) lt.eq.slant M abs(gamma)                                                                                    
  $
][]

#theorem()[
  Пусть путь $gamma^-:space gamma^-(t)=gamma(a+b-t),space t in [a,b] =>$ $
    limits(integral)_(gamma^-) f(z) dif z = - limits(integral)_gamma f(z) dif z,
  $ а путь $gamma^-$ называют *противоположно ориентированным* к $gamma$.
][]