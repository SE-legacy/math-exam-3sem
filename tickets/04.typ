#import "../functions.typ": definition, theorem, lets, equ
= Формула Стокса
#theorem(name: "Теорема Стокса")[
  Пусть в некоторой области $G$, целиком содержащей дважды непрерывно дифференцируемую поверхность $Phi$, заданы непрерывно дифференцируемые функции $P$, $Q$, $R$. $Phi$ и $L = partial Phi$ согласованы по правилу штопора $==>$
  #equ($
    limits(integral.double)_Phi ((partial R)/(partial y) - (partial Q)/(partial z)) d y d z + ((partial P)/(partial z) - (partial R)/(partial x)) d z d x + ((partial Q)/(partial x) - (partial P)/(partial y) d x d y).
  $, id: <eq:25>)
][
	Докажем, что
	$ limits(integral.cont)_L P d x = limits(integral.double)_Phi (partial P)/(partial z) d x d z - limits(integral.double)_Phi (partial P)/(partial y) d x d y. $
	1. Преобразуем левую часть. $lets partial D$ --- контур, заданный параметрическими уравнениями
    $ u = u(t), " " v = v(t), " " t in T = [t_1, t_2]. $
    Тогда параметрические уравнения, задающие контур $L$, имеют вид
    $ x = x(u(t), v(t)), " " y = y(u(t), v(t)), " " z = z(u(t), v(t)), " " t in T. $
    В соответствии с формулами для вычисления криволинейного интеграла второго рода
    $ limits(integral.cont)_L P d x = limits(integral)_(t_1)^t_2 P((partial x)/(partial u) u'(t) + (partial x)/(partial v) v'(t)) d t = \
    = limits(integral.cont)_(L^*) P(x(u,v), y(u,v), z(u,v))((partial x)/(partial y) d u + (partial x)/(partial v) d v) = limits(integral.cont)_(L^*) P (partial x)/(partial u) d u + P (partial x)/(partial v) d v. $
    Применяя формулу Грина, получим
    $ limits(integral.cont)_(L^*) P (partial x)/(partial u) d u + P (partial x)/(partial v) d v = limits(integral.double)_D (((partial P)/(partial u) (partial x)/(partial u) + (partial P)/(partial y) (partial y)/(partial u) + (partial P)/(partial z) (partial z)/(partial u)) (partial x)/(partial v) + P (partial^2 x)/(partial u partial v)) d u d v - \
    - limits(integral.double)_D (((partial P)/(partial u) (partial x)/(partial v) + (partial P)/(partial y) (partial y)/(partial v) + (partial P)/(partial z) (partial z)/(partial v)) (partial x)/(partial u) + P (partial^2 x)/(partial u partial v)) d u d v = \
    = limits(integral.double)_D (partial P)/(partial z) ((partial z)/(partial u) (partial x)/(partial v) - (partial z)/(partial v) (partial x)/(partial u)) d u d v - limits(integral.double)_D (partial P)/(partial y) ((partial y)/(partial u) (partial x)/(partial v) - (partial y)/(partial v) (partial x)/(partial u)) d u d v = \
    = limits(integral.double)_D ((partial P)/(partial z) B - (partial P)/(partial y) C) = limits(integral.double)_Phi (partial P)/(partial z) d z d x - (partial P)/(partial y) d x d y. $
	2. Аналогично доказываются равенства
    $ limits(integral.cont)_L Q d y = limits(integral.double)_Phi (partial Q)/(partial x) d x d y - (partial Q)/(partial z) d y d z, "  " limits(integral.cont)_L R d z = limits(integral.double)_Phi (partial R)/(partial y) d y d z - (partial R)/(partial x) d z d x. $
	3. Складывая три равенства, получим
    $ limits(integral.cont)_L P d x + Q d y + R d z = limits(integral.double)_Phi ((partial R)/(partial y) - (partial Q)/(partial z)) d y d z + ((partial P)/(partial z) - (partial R)/(partial x)) d z d x + ((partial Q)/(partial x) - (partial P)/(partial y) d x d y). $
]

#definition(name: "Замечание")[
  Формулу (@eq:25), называемой *формулой Стокса*, можно записать в более удобной для запоминания в форме:

  $
    limits(integral.cont)_L P d x + Q d y + R d z = limits(integral.double)_Phi mat(delim: "|",
        cos alpha, cos beta, cos y;
        (partial)/(partial x), (partial)/(partial y), (partial)/(partial z);
        P, Q, R
      ) d S.
  $
]
