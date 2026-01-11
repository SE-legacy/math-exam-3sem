#import "../functions.typ": theorem
#set math.equation(numbering: none)
= Формула Стокса
#theorem(name: "Теорема Стокса")[
	$] G$ --- некоторая область, $Phi$ --- дважды непр. дифф. поверхность, $P, Q, R$ --- непр. дифф. функции, $Phi subset G$, $P, Q, R$ опр. на $G$

	$Phi$ и $L = partial Phi$ согласованы по правилу штопора $=>$
	$
		limits(integral.double)_Phi mat(delim: "|",
			cos alpha, cos beta, cos y;
			frac(partial, partial x), frac(partial, partial y), frac(partial, partial z);
			P, Q, R
		) dif S
	$
][
	Докажем, что 
	$ integral.cont P d x = limits(integral.double)_Phi frac(partial P, partial z) dif x dif z - limits(integral.double)_Phi frac(partial P, partial y) dif x dif y $
	1. Преобразуем левую часть. $] partial D$ --- контур, заданный параметрическими уравнениями
	$ u = u(t), v = v(t), t in T = [t_1, t_2] $
	Тогда параметрические уравнения, задающие контур $L$, имеют вид 
	$ x = x(u(t), v(t)), y = y(u(t), v(t)), z = z(u(t), v(t)), t in T $
	$ limits(=>)^("по формуле для вычисления" integral.cont "второго рода") $
	$ limits(integral.cont)_L P d x = limits(integral)_(t_1)^t_2 P(frac(partial x, partial u) u'(t) + frac(partial x, partial v) v'(t)) dif t = \
	= limits(integral.cont)_(L*) P(x(u,v), y(u,v), z(u,v))(frac(partial x, partial y) dif u + frac(partial x, partial v) d v) = limits(integral.cont)_(L*) P frac(partial x, partial u) dif u + P frac(partial x, partial v) dif v =^"по формуле Грина" \
	= limits(integral.double)_D ((frac(partial P, partial x) frac(partial x, partial u) + frac(partial P, partial y) frac(partial y, partial u) + frac(partial P, partial z) frac(partial z, partial u)) frac(partial x, partial v) + P frac(partial^2 x, partial u partial v)) dif u dif v - \
	- limits(integral.double)_D ((frac(partial P, partial x) frac(partial x, partial v) + frac(partial P, partial y) frac(partial y, partial v) + frac(partial P, partial z) frac(partial z, partial v)) frac(partial x, partial u) + P frac(partial^2 x, partial u partial v)) dif u dif v = \
	= limits(integral.double)_D frac(partial P, partial z) (frac(partial z, partial u) frac(partial x, partial v) - frac(partial z, partial v) frac(partial x, partial u)) d u d v - limits(integral.double)_D frac(partial P, partial y) (frac(partial y, partial u) frac(partial x, partial v) - frac(partial y, partial v) frac(partial x, partial u)) dif u dif v = \
	= limits(integral.double)_D (frac(partial P, partial z) B - frac(partial P, partial y) C) = integral.double_Phi frac(partial P, partial z) dif z dif x - frac(partial P, partial y) dif x dif y $

	2. Аналогично доказываются равенства
	$ limits(integral.cont)_L Q dif y = integral.double_Phi frac(partial Q, partial x) dif x dif y - frac(dif Q, dif z) dif y dif z, $
	$ limits(integral.cont)_L R dif z = integral.double_Phi frac(partial R, partial y) dif y dif z - frac(dif R, dif x) dif z dif x. $

	3. Складывая три равенства, получим
	$ limits(integral.cont)_L P dif x + Q dif y + R dif z = limits(integral.double)_Phi (frac(partial R, partial y) - frac(partial Q, partial z)) dif y dif z + (frac(partial P, partial z) - frac(partial R, partial x)) dif z dif x + (frac(partial Q, partial x) - frac(partial P, partial y) d x d y) = \
		limits(integral.double)_Phi mat(delim: "|",
			cos alpha, cos beta, cos y;
			frac(partial, partial x), frac(partial, partial y), frac(partial, partial z);
			P, Q, R
		) dif S
	$
	Теорема доказана.
]
