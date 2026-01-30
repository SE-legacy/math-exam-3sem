#import "../functions.typ": definition, theorem, lets
= Поверхностный интеграл второго рода и его свойства
$lets Phi$ --- гладкая поверхность с параметрическим представлением
$ overline(r) = overline(r)(u,v) = (x(u,v),y(u,v),z(u,v)) (u,v) in D $
и на $Phi$ заданы функции $P(x,y,z), Q(x,y,z), R(x,y,z)$.

#definition()[
  Интегралы второго рода:
  $ limits(integral.double)_Phi P(x, y, z) d y d z := limits(integral.double)_D P(x(u,v), y(u, v), z(u, v))A(u, v) d u d v, \
  limits(integral.double)_Phi Q(x, y, z) d z d x := limits(integral.double)_D Q(x(u, v), y(u, v), z(u, v))B(u, v) d u d v, \
  limits(integral.double)_Phi R(x, y, z) d x d y := limits(integral.double)_D R(x(u,v), y(u, v), z(u,v))C(u, v) d u d v, $

  или

  $ limits(integral.double)_Phi P(x, y, z) d y d z + Q(x, y, z) d z d x + R(x, y, z) d x d y := \
  = limits(integral.double)_D (P(x(u,v), y(u, v), z(u, v))A(u, v) + Q(x(u, v), y(u, v), z(u, v))B(u, v) + \
  + R(x(u,v), y(u, v), z(u,v))C(u, v)) d u d v, $

  где

  $ A = A (u, v) = (D(y, z))/(D(u, v)), " " B = B (u, v) = (D(z, x))/(D(u, v)), " " C = C (u, v) = (D(x, y))/(D(u, v)). $
]


== Свойства поверхностного интеграла второго рода

+ При смене ориентации поверхности интеграл меняет знак.
+ Линейность:
  $
    limits(integral.double)_Phi sum_(j = 1)^m alpha_j R_j (x, y, z) d x d y = sum_(j = 1)^m alpha_j limits(integral.double)_Phi R_j (x, y, z) d x d y.
  $
3. $Phi$ разбита на $n$ частей $Phi_k subset Phi, k = overline(1\, n)$ без общих внутренних точек $==>$
  $ limits(integral.double)_Phi R(x, y, z) d x d y = sum_(k = 1)^n limits(integral.double)_Phi_k R (x, y, z) d x d y. $
4. $Phi$ --- цилиндрическая поверхность, образующая которой параллельна оси $O z$ $==>$
  $ limits(integral.double)_Phi R(x, y, z) d x d y = 0. $
