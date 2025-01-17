биба
#set page(height:  auto)
= Поверхностный интеграл второго рода и его свойства
$] Phi$ --- гладкая поверхность с параметрическим представлением
$ overline(r) = overline(r)(u,v) = (x(u,v),y(u,v),z(u,v)) (u,v) in D, $
на $Phi$ заданы $P(x,y,z), Q(x,y,z), R(x,y,z)$
 / Определение: интегралы второго рода:
$ integral.double_Phi P(x, y, z) dif y dif z := integral.double_D P(x(u,v), y(u, v), z(u, v))A(u, v) dif u dif v $
$ integral.double_Phi Q(x, y, z) dif z dif x := integral.double_D Q(x(u, v), y(u, v), z(u, v))B(u, v) dif u dif v $
$ integral.double_Phi R(x, y, z) dif x dif y := integral.double_D R(x(u,v), y(u, v), z(u,v))C(u, v) dif u dif v $

== Свойства поверхностного интеграла второго рода

+ При смене ориентации поверхности интеграл меняет знак
+ Линейность:
$ integral.double_Phi sum_(j = 1)^m alpha_j R_j R(x, y, z) dif x dif y = sum_(j = 1)^m alpha_j integral.double_Phi R_j (x, y, z) dif x dif y $
3. $Phi$ разбита на n частей $ Phi_k subset Phi, k = overline("1,n")$ без общих внутренних точек $=>$
$ integral.double_Phi alpha_j dif x dif y = sum_(k = 1)^n integral.double_Phi_k R_j (x, y, z) dif x dif y $
4.  $Phi$ --- цилиндрическая поверхность, образующая $|| O z => integral.double_Phi R(x, y, z) dif x dif y = 0$
