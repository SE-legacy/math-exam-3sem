= Поверхностный интеграл второго рода и его свойства
$] Phi$ --- гладкая поверхность с параметрическим представлением
$ overline(r) = overline(r)(u,v) = (x(u,v),y(u,v),z(u,v)) (u,v) in D, $
на $Phi$ заданы $P(x,y,z), Q(x,y,z), R(x,y,z)$
/ Определение: интегралы второго рода:
$ integral.double_Phi P(x, y, z) d y d z := integral.double_D P(x(u,v), y(u, v), z(u, v))A(u, v) d u d v $
$ integral.double_Phi Q(x, y, z) d z d x := integral.double_D Q(x(u, v), y(u, v), z(u, v))B(u, v) d u d v $
$ integral.double_Phi R(x, y, z) d x d y := integral.double_D R(x(u,v), y(u, v), z(u,v))C(u, v) d u d v $

где

$ A = A (u, v) = (D(y, z))/(D(u, v)) $
$ B = B (u, v) = (D(z, x))/(D(u, v)) $
$ C = C (u, v) = (D(x, y))/(D(u, v)) $


== Свойства поверхностного интеграла второго рода

+ При смене ориентации поверхности интеграл меняет знак
+ Линейность:
  $
    integral.double_Phi sum_(j = 1)^m alpha_j R_j (x, y, z) d x d y = sum_(j = 1)^m alpha_j integral.double_Phi R_j (x, y, z) d x d y
  $
3. $Phi$ разбита на n частей $Phi_k subset Phi, k = overline("1,n")$ без общих внутренних точек $=>$
  $ integral.double_Phi R(x, y, z) d x d y = sum_(k = 1)^n integral.double_Phi_k R (x, y, z) d x d y $
4. $Phi$ --- цилиндрическая поверхность, образующая которой параллельна оси $O z$, тогда $integral.double_Phi R(x, y, z) d x d y = 0$
