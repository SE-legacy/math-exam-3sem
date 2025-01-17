биба
#set page(height: auto)
#import "../functions.typ": theorem, definition, equ
= Средние Фейера и их представление интегралом Фейера

#definition(breakline: true)[
  Пусть $f in R_(2pi)$,
  $
    f(x) tilde a_0/2 + limits(sum)_(n=1)^(infinity)(a_n cos n x + b_n sin n x), \
    S_n (x) = a_0/2 + limits(sum)_(k=1)^(n)(a_k cos k x + b_k sin k x).
  $

  *Средними Фейера* называют:
  $
    sigma_n (x) = (S_0 (x) + S_1 (x) + dots + S_n (x))/(n + 1).
  $
]

#theorem(name: "Теорема (представление интегралом Фейера)", breakline: true)[
  $ f in R_(2pi) => sigma_n (x) = 1/pi limits(integral)_0^pi (f(x+t)+f(x-t))Phi_n (t) d t, $
  где функция
  #equ($ Phi_n (t) = (limits(sum)_(k=0)^(n) D_k (t))/(n + 1) = (sin^2 ((n + 1) / 2) t)/(2(n+1)sin^2 t/2) $, id: <eq:eq51>)
  называется *ядром Фейера* (при $t = 2pi k, space k in ZZ$ понимаем его в предельном смысле).
][
  По теореме Дирихле и определению средних Фейера достаточно доказать равенство (@eq:eq51). Согласно определению ядра Дирихле имеем:
  $ Phi_n (t) = (limits(sum)_(k=0)^(n) D_k (t))/(n + 1) = (limits(sum)_(k=0)^(n) sin(k+1/2)t)/(2(n + 1)sin t /2) => \
    => (2 sin t/2)^2(n+1)Phi_n (t) = limits(sum)_(k=0)^(n) 2 sin t/2 sin (k + 1/2) t = limits(sum)_(k=0)^(n) (cos k t - cos (k + 1)t) = \
    = 1 - cos(n+1)t = 2sin^2((n+1)/2)t => "исходное равенство верно." $ 
]
