#import "../functions.typ": theorem
= Интегральная формула Коши
#theorem(
  name: "Интегральная формула Коши",
  breakline: true
)[
  Пусть $f$ --- голоморфная в области $G$ функция. $Gamma$ --- замкнутая кусочно гладкая кривая Жордана, принадлежащая $G$ вместе со своей внутренностью $D$. Тогда $forall z_0 in D$ справедливо формула:
  $ f(z_0) = 1 / (2 pi i) integral_Gamma f(z) / (z - z_0) dif z $
][
  Построим окружность $gamma_rho$ с центром в $z_0$ радиуса $rho$ такого, чтобы круг ${abs(z - z_0) <= rho}$ лежал внутри $Gamma$. Тогда согласно теореме Коши для составного контура имеем:
  $ 1 / (2 pi i) integral_Gamma f(z) / (z - z_0) dif z = 1 / (2 pi i) integral_(gamma_rho) f(z) / (z - z_0) dif z $
  Для доказательства исходной формулы достаточно доказать равенство:
  $ f(z_0) = 1 / (2 pi i) integral_(gamma_rho) f(z) / (z - z_0) dif z = integral_(gamma_rho) f(z) / (z - z_0) dif z - 2 pi i f(z_0) = integral_(gamma_rho) f(z) / (z - z_0) dif z - f(z_0) integral_(gamma_rho) 1 / (z - z_0) dif z = $
  $ = integral_(gamma_rho) (f(z) - f(z_0)) / (z - z_0) dif z = 0 $

  Функция $f$ непрерывна в $z_0$, тогда $forall epsilon exists delta > 0$ такое, что
  $ abs(f(z) - f(z_0)) < epsilon $
  если $abs(z - z_0) < delta$. Тогда если радиус $rho < delta$, то $abs(f(z) - f(z_0)) < epsilon$ $forall z in gamma_rho$. Поэтому
  $ integral_(gamma_rho) (f(z) - f(z_0)) / (z - z_0) dif z < epsilon / rho 2 pi rho = 2 pi epsilon $

  Значит
  $ lim_(rho -> 0) integral_(gamma_rho) (f(z) - f(z_0)) / (z - z_0) dif z = 0 $

  Но данный интеграл не зависит от $rho$, следовательно
  $ integral_(gamma_rho) (f(z) - f(z_0)) / (z - z_0) dif z = 0 $
]
