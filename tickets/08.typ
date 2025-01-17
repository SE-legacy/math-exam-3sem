биба
#set page(height: auto)
#import "../functions.typ": theorem, equ
= Представление частичной суммы ряда Фурье интегралом Дирихле

#theorem(
	name: "Теорема Дирихле",
	breakline: true
)[

Пусть функция $f in R_(2 pi)$. Тогда частная сумма ряда Фурье функции $f$ может быть предствалена в следующем виде

#equ($ S_n (x) = 1/pi limits(integral)_0^pi (f(x + t) + f(x - t)) D_n (t) dif t, space x in RR, $, id:<fla37>)

где

$ D_n(t) = 1/2 + cos t + cos 2 t + ... + cos n t = (sin (2 n + 1)/2 t)/(2 sin t/2) $

Интеграл в равенстве (@fla37) называют _интегралом Дирихле_.
][
  Пусть теперь функция $f in R_(2 pi)$. Рассмотрим частную сумму ее ряда Фурье в фиксированной точке $x$

  $ S_n(x) = a_0/2 + limits(sum)_(k = 1)^n (a_k cos k x + b_k sin k x). $

  Подставив вместо коэффициентов их выражения

  $ a_0 = 1/pi limits(integral)_(-pi)^pi f(t) dif t, space a_k = 1/pi limits(integral)_(-pi)^pi f(t) cos k t dif t, $

  $ b_k = 1/pi limits(integral)_(-pi)^pi f(t) sin k t dif t, space k = 1, 2,..., $

  получим

  $ 
  S_n(x) = 1/(2 pi) limits(integral)_(-pi)^pi f(t) dif t + limits(sum)_(k = 1)^n f(t)(cos k t cos k x + sin k t + sin k x) dif t =\
  = 1/pi limits(integral)_(-pi)^pi f(t) dif t (1/2 + limits(sum)_(k = 1)^n cos k (t - x)) dif t = 1/pi limits(integral)_(-pi)^pi f(t) (sin (2n + 1)/2 (t - x))/(2 sin (t - x)/2) dif t. 
  $

  Сделаем в интеграле замену $t = x + u$, ($u$ ---  новая переменная). Тогда

  $
  S_n(x) = 1/pi limits(integral)_(-pi)^pi f(x + u) (sin (2n + 1)/2 u)/(2 sin u/2) dif u =\
  = 1/pi limits(integral)_(0)^pi f(x + u) (sin (2n + 1)/2 u)/(2 sin u/2) dif u + 1/pi limits(integral)_(-pi)^0 f(x + u) (sin (2n + 1)/2 u)/(2 sin u/2) dif u =
  $

  (сделаем замену переменных во втором интеграле $u = - y$, затем переобозначим переменное $y$ вновь на $u$)

  $
  = 1/pi limits(integral)_(0)^pi (f(x + u) + f(x - u)) (sin (2n + 1)/2 u)/(2 sin u/2) dif u =\
  = 1/pi limits(integral)_(0)^pi (f(x + u) + f(x - u)) D_n (u) dif u.
  $

  Таким образом, мы доказали так называемую теорему Дирихле.
]

