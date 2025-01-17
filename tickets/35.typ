биба
#set page(height: auto)
#import "../functions.typ": theorem, definition, equ
= Вычет в конечной точке. Теорема Коши о вычетах. Вычет в бесконечно удаленной точке. Теорема о полной сумме вычетов.

#definition()[Пусть $f$ голоморфна в $circle(O)(V), space V = {0<abs(z-a)<epsilon}$ точки $a in CC$.
  *Вычетом функции* $f$ в точке $a$ называют число
  $ limits(r e s)_a f = 1/(2pi i) limits(integral)_(abs(z-a)=r) f(z) dif z, $
  где $0 < r < epsilon$ и окружность ориентирована против часовой стрелки.
]

#definition(name: "Замечание")[$f "голоморфна в" a => limits(r e s)_a f(z) = 0.$]

#theorem(name: "Теорема (Коши о вычетах)")[Пусть простой контур $L$ вместе со своей внутренностью $D$ лежит в области $G$, $f$ --- голоморфна в $G$ всюду за исключением конечного числа особых точек $a_1, a_2, dots, a_n in D$. Тогда
  $ limits(integral)_L f(z) d z = 2 pi i limits(sum)_(k=1)^n limits(r e s)_a_k f(z) $.
][
  $forall k in NN sect [1;n]$ построим окружности $L_k$ с центрами в $a_k$ таких радиусов, чтобы они не пересекались друг с другом и все лежали в $D$. По теореме Коши для составного контура и определению вычета имеем:
  $ limits(integral)_L f(z) d z = limits(sum)_(k=1)^n limits(integral)_L_k f(z) d z = 2pi i limits(sum)_(k=1)^n limits(r e s)_a_k f(z) $  
]

#definition()[Пусть $f$ голоморфна в ${abs(z)>R}$, $z = oo$ ее изолированная особая точка.
  *Вычетом функции* $f$ в бесконечности называют число
  $ limits(r e s)_oo f = 1/(2pi i) limits(integral)_(L^-_r) f(z) dif z, $
  где окружность $L = {abs(z)=r}$ радиуса $r > R$ проходится по часовой стрелке.
]

#theorem(name: "Теорема (о полной сумме вычетов)")[
  $f$ голоморфна в $CC$ всюду за исключением конечного числа особых точек $a_1, a_2, dots, a_n =>$
  $ limits(r e s)_oo f(z) + limits(sum)_(k=1)^n limits(r e s)_a_k f(z) = 0. $
][]


#set align(center)
#v(50pt)
*Успехов на экзамене!*
