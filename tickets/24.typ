#import "../functions.typ": theorem, definition
= Интегральная теорема Коши
#theorem(
  name: "Теорема Коши (для треугольника)",
)[
  Пусть функция $f$ голоморфна в области $D$ и замкнутый треугольник $T subset D$. Тогда
  $ limits(integral)_(partial T) f(z) d z = 0. $
][]

#theorem(
  name: "Теорема Коши (для замкнутой ломаной)",
)[
  Пусть функция $f$ голоморфна в области $D$ и замкнутая ломаная $L subset D$. Тогда
  $ limits(integral)_L f(z) d z = 0. $
][]

#theorem(
  name: "Теорема Коши (для кусочно гладкой замкнутной кривой)",
)[
  Пусть функция $f$ голоморфна в области $D$ и $Gamma$ --- кусочно гладкая замкнутая кривая, лежащая в $D$. Тогда
  $ limits(integral)_Gamma f(z) d z = 0. $
][
  Рассмотрим замкнутую область $E subset D$, содержащую $Gamma$. Пусть $E$ состоит из точек, расстояние которых от $Gamma$ не превосходит некоторого $delta > 0$. Заметим, что $delta$ должно быть меньше расстояния между $Gamma$ и границей $D$.

  Функция $f$, непрерывная на  $E$, равномерно непрерывна на нем. Поэтому

  $ forall epsilon > 0 " " exists rho > 0 " " forall zeta_1,zeta_2 in E " " (abs(zeta_1 - zeta_2) < rho => abs(f (zeta_1) - f(zeta_2)) < epsilon). $

  Фиксируем на $Gamma$ в определенном направлении точки $z_0, z_1, ..., z_n = z_0$, разбивающие ее на дуги $gamma_0, gamma_1, ..., gamma_(n-1)$ так, чтобы максимальная их длина $limits(max)_(0 <= j <= n-1) abs(gamma_j)$ была меньше $min (delta, rho)$. Каждые 2 точки $z_j$ и $z_(j+1)$ $(j = 0,1,dots,n-1)$ являются концами отрезка $l_j$. Совокупность этих отрезков составляет замкнутую ломаную $L$, вписанную в $Gamma$ и лежащую в $E$.

  В силу вышеописанной теоремы

  $ limits(integral)_L f(z)d z = 0 ==> \
  abs(limits(integral)_Gamma f (z) d z, size: #80%) = abs(limits(integral)_Gamma f(z) d z - limits(integral)_L f(z) d z, size: #80%) = \
  = abs(limits(sum)_(j = 0)^(n - 1) limits(integral)_(gamma_j) f(z)d z - limits(sum)_(j = 0)^(n - 1) limits(integral)_(l_j) f(z) d z, size: #80%) <=  limits(sum)_(j = 0)^(n - 1) abs(limits(integral)_(gamma_j) f(z) d z - limits(integral)_(l_j) f(z) d z, size: #80%). $

  Заметим, что

  $ limits(integral)_(gamma_j) f(z_j) d z = f(z_j)(z_(j+1)-z_j) = limits(integral)_(l_j) f(z_j)d z ==> \
  abs(limits(integral)_(gamma_j) f(z) d z - limits(integral)_(l_j) f(z) d z, size: #80%) <= abs(limits(integral)_(gamma_j) (f(z)d z - f(z_j)) d z, size: #80%) + abs(limits(integral)_(l_j) (f(z_j)d z - f(z)) d z, size: #80%) <= \
  limits(sup)_(z in gamma_j) abs(f(z) - f(z_j))abs(gamma_j) + limits(sup)_(z in l_j) abs(f(z) - f(z_j))abs(l_j). $

  Т.к. расстояние между любыми двумя точками дуги $gamma_j$ или отрезка $l_j$ меньше, чем $rho$, то

  $ limits(sup)_(z in gamma_j) abs(f(z) - f(z_j)) < epsilon, " " limits(sup)_(z in l_j) abs(f(z) - f(z_j)) < epsilon ==> \
  abs(limits(integral)_(gamma_j) f(z) d z - limits(integral)_(l_j) f(z) d z, size: #80%) < epsilon (abs(gamma_j) + abs(l_j)) <= 2 epsilon abs(gamma_j) $

  и

  $ abs(limits(integral)_Gamma f(z) d z, size: #80%) <= 2 epsilon limits(sum)_(j=0)^(n-1) abs(gamma_j) = 2 epsilon abs(Gamma). $

  Т.к. $epsilon$ произвольно мало, то

  $ limits(integral)_(Gamma) f(z) d z = 0. $
]

#definition(
  name: "Определение составного контура"
)[
  Пусть на плоскости даны простые замкнутые кривые $Gamma$, $gamma_1, ..., gamma_n$, причём все кривые $gamma_1, ..., gamma_n$ лежат внутри $Gamma$ и каждая кривая $gamma_j$ лежит во внешности любой другой кривой $gamma_i, i != j$. Множество точек плоскости, расположенных внутри $Gamma$ и вне $gamma_1, ..., gamma_n$, представляет собой многосвязную область $D$. Границу $partial D$ такой многосвязной области $D$ с положительным обходом будем называть *составным контуром.*
]

#theorem(
  name: "Теорема Коши (для составного контура)",
)[
  Пусть функция $f$ голоморфна в области $G$, $D$ --- многосвязная область, граница $partial D$ которой является составным контуром, и $overline(D) in G$. Тогда

  $ limits(integral)_(partial D) f(z) d z = 0. $
][
  Соединим гладкими кривыми, лежащими в $G$, контуры $Gamma$ с $gamma_1$, $gamma_1$ с $gamma_2$ и т.д. $gamma_n$ с $Gamma$. В результате мы можем рассмотреть два замкнутых контура, удовлетворяющих интегральной теореме Коши для простого замкнутого контура, интегралы по которым будут равны нулю. Остается заметить, что сумма интегралов по этим двум контурам представляет собой в то же время интеграл по составному контуру $partial D$.
]
