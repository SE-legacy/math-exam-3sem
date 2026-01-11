#import "../functions.typ": theorem, definition, equ
= Ряды Лорана. Теорема о разложении функции в ряд Лорана.

#definition(breakline: true)[
  *Рядом Лорана* называется ряд вида:
  #equ($ limits(sum)_(n=-infinity)^(+infinity) c_n (z-z_0)^n, $, id: <eq:eq131>)
  понимаемый как сумма двух рядов:
  #equ($ limits(sum)_(n=0)^(+infinity) c_n (z-z_0)^n, $, id: <eq:eq132>)
  и
  #equ($ limits(sum)_(n=-infinity)^(-1) c_n (z-z_0)^n = limits(sum)_(n=1)^(+infinity) c_(-n) (z-z_0)^(-n). $, id: <eq:eq133>)
]

Ряд (@eq:eq132) является степенным, с радиусом сходимости: $ R = 1/(limits(overline(lim))_(n -> infinity) root(n, abs(c_n))). $

Ряд (@eq:eq133) заменой $zeta = 1/(z-z_0)$ приводится к степенному: #equ($ limits(sum)_(n=1)^(+infinity) c_(-n)zeta^n $, id: <eq:eq134>)
и пусть $ rho = 1/(limits(overline(lim))_(n -> infinity) root(n, abs(c_(-n)))) $
его радиус сходимости, то есть (@eq:eq134) сходится в круге ${abs(zeta) < rho} =>$ (@eq:eq133) сходится в ${abs(z-z_0) > 1/rho}$.

Обозначим $ r = 1/rho = limits(overline(lim))_(n -> infinity) root(n, abs(c_(-n))) $

#table(
  columns: (1fr, 1fr),
  inset: 10pt,
  align: center,
  table.header(
    [*Условие*], [*Кольцо сходимости*],
  ),
  $ r < R $, $ {r < abs(z-z_0) < R} $,
  $ r > 0, space R = +infinity $, $ {abs(z-z_0) > r} $,
  $ r = 0, space R = +infinity $, $ CC backslash {z_0} $,
  $ r = 0, space 0 < R < +infinity $, $ {0 < abs(z-z_0) < R} $,
)

#theorem(name: "Теорема (о разложении голоморфной функции в ряд Лорана)", breakline: true)[
  $ f(z) "голоморфна в" V = {r < abs(z-z_0) < R, space 0 lt.eq.slant r < R lt.eq.slant +infinity} => $ 
  #equ($ => f(z) = limits(sum)_(n=-infinity)^(+infinity) c_n (z-z_0)^n, $, id: <eq:eq135>)
  где:
  #equ($ c_n = 1/(2pi i) limits(integral)_gamma_p f(zeta)/(zeta - z_0)^(n+1) dif zeta, space n in ZZ, $, id: <eq:eq136>)
  где $gamma_p$ --- окружность ${abs(zeta - z_0) = rho}, r < rho < R, c_n$ не зависят от $rho$.
][
  1. Независимость $c_n$ от $rho$ вытекает из теоремы Коши для составного контура.
  2. Пусть $ &z in V, space r_1, R_1: space r < r_1 < abs(z-z_0) < R_1 < R,\
             &Gamma_1 = {abs(zeta-z_0) = r_1},\
             &Gamma_2 = {abs(zeta-z_0) = R_1}\ $
    и построим окружность $ L = {abs(zeta - z) = r'} subset {r_1 < abs(zeta - z_0) < R_1}. $

    По теореме Коши для составного контура:
    $ limits(integral)_Gamma_1 f(zeta)/(zeta - z) dif zeta = limits(integral)_Gamma_2 f(zeta)/(zeta - z) dif zeta + limits(integral)_L f(zeta)/(zeta - z) dif zeta, $
    а по интегральной теореме Коши:
    $ 1/(2pi i) limits(integral)_L f(zeta)/(zeta - z) dif zeta = f(z) => \
      => f(z) = 1/(2pi i) limits(integral)_Gamma_1 f(zeta)/(zeta - z) dif zeta - 1/(2pi i) limits(integral)_Gamma_2 f(zeta)/(zeta - z) dif zeta. $
    
    Далее две ситуации:

    $ text("2.1.", weight: "bold", font: "Libertinus Serif") space zeta in Gamma_1 => abs(z-z_0) < abs(zeta-z_0) => abs(z-z_0)/abs(zeta-z_0) < 1 limits(==>)^"т. Тейлора" \
      limits(==>)^"т. Тейлора" 1/(zeta - z) = limits(sum)_(n=0)^infinity (z-z_0)^n/(zeta-z_0)^(n+1) => $
    $ => 1/(2pi i) limits(integral)_Gamma_1 f(zeta)/(zeta-z) dif zeta = limits(sum)_(n=0)^infinity (z-z_0)^n 1/(2pi i) limits(integral)_Gamma_1 limits(sum)_(n=0)^infinity (f(zeta) dif zeta)/(zeta - z_0)^(n+1) = limits(sum)_(n=0)^(+infinity) c_n (z-z_0)^n, $
    $ "где" forall n in NN space c_n = 1/(2pi i) limits(integral)_Gamma_1 (f(zeta) dif zeta)/(zeta - z_0)^(n+1). $

    $ text("2.2.", weight: "bold", font: "Libertinus Serif") space zeta in Gamma_2 => abs(z-z_0) > abs(zeta-z_0) => abs(zeta-z_0)/abs(z-z_0) < 1 => 1/(zeta - z) = 1/((zeta - z_0) - (z - z_0)) = \
    = -1/(z-z_0) 1/(1-(zeta-z_0)/(z-z_0)) = - 1/(z-z_0) limits(sum)_(n=0)^(infinity) (zeta-z_0)^n/(z-z_0)^n. $
    Опираясь на равномерную сходимость ряда на $Gamma_2$:
    $ 1/(2pi i) limits(integral)_Gamma_2 f(zeta)/(zeta - z) dif zeta = -1/(2pi i) limits(integral)_Gamma_2 f(zeta)/(zeta - z_0) limits(sum)_(n=0)^(infinity) (zeta-z_0)^n/(z-z_0)^n dif zeta = -limits(sum)_(n=0)^(infinity) 1/(z-z_0)^(n+1) (1/(2pi i) limits(integral)_Gamma_2 f(zeta) (zeta-z_0)^n dif zeta). $
    Заменив индекс суммирования $m = -(n+1)$:
    $ 1/(2pi i) limits(integral)_Gamma_2 f(zeta)/(zeta - z) dif zeta = -limits(sum)_(m=-infinity)^(-1) (z-z_0)^m (1/(2pi i) limits(integral)_Gamma_2 limits(sum)_(m=-infinity)^(-1) (f(zeta) dif zeta)/(zeta-z_0)^(m+1)). $

    3. Таким образом:
    $ 1/(2pi i) limits(integral)_Gamma_2 f(zeta)/(zeta - z) dif zeta = - limits(sum)_(n=-infinity)^(-1) c_n (z-z_0)^n, $
    $ "где" forall n in ZZ inter (-infinity, -1] space c_n = 1/(2pi i) limits(integral)_Gamma_2 (f(zeta) dif zeta)/(zeta - z_0)^(n+1). $

    4. Остаётся заметить, что в формулах для коэффициентов контуры интегрирования можно заменить на $forall gamma_rho={abs(zeta-z_0) = rho, space r < rho < R}.$
]
