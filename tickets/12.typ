#import "../functions.typ": theorem, consequence, equ
= Некоторые особенности рядов Фурье: ряды Фурье четных и нечетных функций, разложение в ряд Фурье на промежутке $[0;pi]$, разложение в ряд Фурье на промежутке $[-l;l]$.

== Ряды Фурье чётным и нечётных функций
Пусть $f in Re_([-pi;pi]) and f - $чётная. Тогда $forall n in NN$:
#equ($
  a_0 = 1/pi limits(integral)_(-pi)^pi f(x) d x = 2/pi limits(integral)_0^pi f(x) d x,\
  a_n = 1/pi limits(integral)_(-pi)^pi f(x) cos n x d x = 2/pi limits(integral)_0^pi f(x) cos n x d x,\
  b_n = 1/pi limits(integral)_(-pi)^pi f(x) sin n x d x = 0.
$, id: <eq:eq42>)

Таким образом, ряд Фурье чётной функции не содержит синусов кратных дуг, то есть:
$
  f(x) tilde a_0/2+limits(sum)_(n=1)^infinity a_n cos n x,
$

причём коэффициенты вычисляется по формулам (@eq:eq42).

Аналогично, пусть $f in Re_([-pi;pi]) and f - $нечётная. Тогда $forall n in NN$:
#equ($
  a_0 = 1/pi limits(integral)_(-pi)^pi f(x) d x = 0,\
  a_n = 1/pi limits(integral)_(-pi)^pi f(x) cos n x d x = 0,\
  b_n = 1/pi limits(integral)_(-pi)^pi f(x) sin n x d x = 2/pi limits(integral)_0^pi f(x) sin n x d x.
$, id: <eq:eq45>)

Таким образом, ряд Фурье чётной функции не содержит синусов кратных дуг, то есть:
$
  f(x) tilde limits(sum)_(n=1)^infinity b_n sin n x,
$

причём коэффициенты вычисляется по формулам (@eq:eq45).

== Ряды Фурье на промежутке $[0;pi]$
Пусть $f in Re_([0;pi])$.

1. Построим функцию:
$
  F(x) = cases(f(x)\, space x in [0;pi]\,, f(-x)\, space x in [-pi; 0)) => F(x) - "чётная" => F(x) tilde a_0/2+limits(sum)_(n=1)^infinity a_n cos n x,
$
где $forall n in NN$:
$
  a_0 = 2/pi limits(integral)_0^pi F(x) d x= 2/pi limits(integral)_0^pi f(x) d x,\
  a_n = 2/pi limits(integral)_0^pi F(x) cos n x d x= 2/pi limits(integral)_0^pi f(x) cos n x d x 
$

Таким образом, на $[0;pi]$:
$
  F(x) = f(x) tilde a_0/2+limits(sum)_(n=1)^infinity a_n cos n x.
$

2. Построим функцию:
$
  F(x) = cases(f(x)\, space x in [0;pi]\,, -f(-x)\, space x in [-pi; 0)) => F(x) - "нечётная" => F(x) tilde limits(sum)_(n=1)^infinity b_n sin n x,
$
где $forall n in NN$:
$
  b_n = 2/pi limits(integral)_0^pi F(x) sin n x d x = 2/pi limits(integral)_0^pi f(x) sin n x d x.
$

Таким образом, на $[0;pi]$:
$
  F(x) = f(x) tilde limits(sum)_(n=1)^infinity b_n sin n x.
$

== Разложение в ряд Фурье на промежутке $[a; a+2pi]$
При разложении в ряд Фурье функции заданной на отрезке $[a; a+2pi]$, для вычисления коэффициентов в качестве пределов интегрирования следует брать концы этого отрезка.

== Разложение в ряд Фурье на промежутке $[-l; l]$
Пусть $[-l;l] subset.eq D(f), space x(t) = (l t)/pi$.
$ x(t): [-pi;pi] -> [-l; l] => phi(t) = f((l t)/pi) space and space [-pi;pi] subset.eq D(phi) => \
  => phi(t) tilde a_0/2 + limits(sum)_(n=1)^infinity (a_n cos n t + b_n sin n t), $

где $forall n in NN$:
$ a_0 = 1/pi limits(integral)_(-pi)^pi phi(t) d t = 1/pi limits(integral)_(-pi)^pi f((l t)/pi) d t, \
  a_n = 1/pi limits(integral)_(-pi)^pi phi(x) cos n t d t = 1/pi limits(integral)_(-pi)^pi f((l t)/pi) cos n t d t, \
  b_n = 1/pi limits(integral)_(-pi)^pi phi(t) d t = 1/pi limits(integral)_(-pi)^pi f((l t)/pi) sin n t d t. $

Возвращаясь к прежней переменной, полагая $t = (pi x) / l$, имеем:
$ f(x) tilde a_0 / 2 + limits(sum)_(n=1)^infinity (a_n cos (n pi x)/l + b_n sin (n pi x)/l) $

и $forall n in NN$:
$ a_0 = 1/l limits(integral)_(-l)^l f(x) d x, space a_n = 1/l limits(integral)_(-l)^l f(x) cos n x d x, space b_n = 1/l limits(integral)_(-l)^l f(x) sin n x d x. $
