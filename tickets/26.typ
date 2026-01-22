#import "../functions.typ": theorem
= Интегральная формула Коши
#theorem(
  name: "Теорема (интегральная формула Коши)",
)[
  Пусть $f$ --- голоморфная в области $G$ функция. $Gamma$ --- замкнутая кусочно гладкая кривая Жордана, принадлежащая $G$ вместе со своей внутренностью $D$. Тогда $forall z_0 in D$ справедлива формула:

  $ f(z_0) = 1 / (2 pi i) limits(integral)_Gamma f(z) / (z - z_0) d z. $
][
  Построим окружность $gamma_rho$ с центром в точке $z_0$ радиуса $rho$ такого, чтобы круг ${abs(z - z_0) <= rho}$ лежал внутри $Gamma$. Тогда согласно теореме Коши для составного контура имеем:

  $ 1 / (2 pi i) limits(integral)_Gamma f(z) / (z - z_0) d z = 1 / (2 pi i) limits(integral)_(gamma_rho) f(z) / (z - z_0) d z. $

  Для доказательства исходной формулы достаточно доказать равенство:

  $ f(z_0) = 1 / (2 pi i) limits(integral)_(gamma_rho) f(z) / (z - z_0) d z = limits(integral)_(gamma_rho) f(z) / (z - z_0) d z - 2 pi i f(z_0) = limits(integral)_(gamma_rho) f(z) / (z - z_0) d z - f(z_0) limits(integral)_(gamma_rho) 1 / (z - z_0) d z = \
   = limits(integral)_(gamma_rho) (f(z) - f(z_0)) / (z - z_0) d z = 0. $

  Функция $f$ непрерывна в $z_0$, тогда

  $ forall epsilon > 0 " " exists delta > 0 " " (abs(z - z_0) < delta => abs(f(z) - f(z_0)) < epsilon). $
  Тогда если радиус $rho < delta$, то для любого $z in gamma_rho$ $abs(f(z) - f(z_0)) < epsilon$. Поэтому

  $ limits(integral)_(gamma_rho) (f(z) - f(z_0)) / (z - z_0) d z < epsilon / rho 2 pi rho = 2 pi epsilon ==> \
  lim_(rho -> 0) limits(integral)_(gamma_rho) (f(z) - f(z_0)) / (z - z_0) d z = 0. $

  Но данный интеграл не зависит от $rho$, следовательно

  $ limits(integral)_(gamma_rho) (f(z) - f(z_0)) / (z - z_0) d z = 0. $
]
