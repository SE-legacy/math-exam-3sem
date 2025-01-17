биба
#set page(height: auto)
#import "../functions.typ": definition, consequence
= Равенство Парсеваля

#definition[
  Равенство

  $ 1/pi limits(integral)_(-pi)^pi f^2(x) d x = a_0^2/2 + limits(sum)_(k = 1)^infinity (a_k^2 + b_k^2) $

  справедливое $forall f$, интегрируемой на $[-pi,pi]$, называют равенством Парсеваля, или условием замкнутоcти тригонометрической системы.
]
//
// #consequence[
// Пусть $f, g in Re_[-pi, pi]$ и 
//
// $ a_0, a_n, b_n (n = overline(1\,...)) $
//
// --- коэф. Фурье $f$, а 
//
// $ p_0, p_n, q_n (n = overline(1\,...)) $
//
// --- коэф. Фурье $g$
//
// Справедливо равенство
//
//   $ 1/pi limits(integral)_(-pi)^pi f(x) g(x) d x = (a_0 p_0)/2 + limits(sum)_(k = 1)^infinity (a_k p_k + b_k q_k). $
// ][
//   Имеем:
//
//   $ 1/pi limits(integral)_(-pi)^pi f^2(x) d x = (a_0^2)/2 + limits(sum)_(k = 1)^infinity (a_k^2 + b_k^2). $
//
//   $ 1/pi limits(integral)_(-pi)^pi g^2(x) d x = (p_0^2)/2 + limits(sum)_(k = 1)^infinity (p_k^2 + q_k^2). $
//
//   $ 1/pi limits(integral)_(-pi)^pi (f(x) + g(x))^2 d x = (a_0 + p_0)^2/2 + limits(sum)_(k = 1)^infinity ((a_k + p_k)^2 + (b_k + q_k)^2). $
//
//   Вычитая первые 2 р-ва из 3 имеем:
//
//   $ 2/pi limits(integral)_(-pi)^pi f(x) g(x) d x = a_0 p_0 + 2 limits(sum)_(k = 1)^infinity (a_k p_k + b_k q_k). $
// ]
