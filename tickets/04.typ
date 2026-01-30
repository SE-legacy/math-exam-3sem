#import "../functions.typ": theorem
#set math.equation(numbering: none)
= Формула Стокса
#theorem(name: "Теорема Стокса")[
	$] G$ --- некоторая область, $Phi$ --- дважды непр. дифф. поверхность, $P, Q, R$ --- непр. дифф. функции, $Phi subset G$, $P, Q, R$ опр. на $G$

	$Phi$ и $L = partial Phi$ согласованы по правилу штопора $=>$
	$
		limits(integral.double)_Phi mat(delim: "|",
			cos alpha, cos beta, cos y;
			partial/(partial x), partial/(partial y), partial/(partial z);
			P, Q, R
		) dif S
	$
][
	Докажем, что 
	$ integral.cont P d x = limits(integral.double)_Phi (partial P)/(partial z) dif x dif z - limits(integral.double)_Phi (partial P)/(partial y) dif x dif y $
	1. Преобразуем левую часть. $] partial D$ --- контур, заданный параметрическими уравнениями
	$ u = u(t), v = v(t), t in T = [t_1, t_2] $
	Тогда параметрические уравнения, задающие контур $L$, имеют вид 
	$ x = x(u(t), v(t)), y = y(u(t), v(t)), z = z(u(t), v(t)), t in T $
	$ limits(=>)^("по формуле для вычисления" integral.cont "второго рода") $
	$ limits(integral.cont)_L P d x = limits(integral)_(t_1)^t_2 P((partial x)/(partial u) u'(t) + (partial x)/(partial v) v'(t)) dif t = \
	= limits(integral.cont)_(L*) P(x(u,v), y(u,v), z(u,v))((partial x)/(partial y) dif u + (partial x)/(partial v) d v) = limits(integral.cont)_(L*) P (partial x)/(partial u) dif u + P (partial x)/(partial v) dif v =^"по формуле Грина" \
	= limits(integral.double)_D (((partial P)/(partial u) (partial x)/(partial u) + (partial P)/(partial y) (partial y)/(partial u) + (partial P)/(partial z) (partial z)/(partial u)) (partial x)/(partial v) + P (partial^2 x)/(partial u partial v)) dif u dif v - \
	- limits(integral.double)_D (((partial P)/(partial u) (partial x)/(partial v) + (partial P)/(partial y) (partial y)/(partial v) + (partial P)/(partial z) (partial z)/(partial v)) (partial x)/(partial u) + P (partial^2 x)/(partial u partial v)) dif u dif v = \
	= limits(integral.double)_D (partial P)/(partial z) ((partial z)/(partial u) (partial x)/(partial v) - (partial z)/(partial v) (partial x)/(partial u)) d u d v - limits(integral.double)_D (partial P)/(partial y) ((partial y)/(partial u) (partial x)/(partial v) - (partial y)/(partial v) (partial x)/(partial u)) dif u dif v = \
	= limits(integral.double)_D ((partial P)/(partial z) B - (partial P)/(partial y) C) = integral.double_Phi (partial P)/(partial z) dif z dif x - (partial P)/(partial y) dif x dif y $

	2. Аналогично доказываются равенства
	$ limits(integral.cont)_L Q dif y = integral.double_Phi (partial Q)/(partial x) dif x dif y - (partial Q)/(partial z) dif y dif z, $
	$ limits(integral.cont)_L R dif z = integral.double_Phi (partial R)/(partial y) dif y dif z - (partial R)/(partial x) dif z dif x. $

	3. Складывая три равенства, получим
	$ limits(integral.cont)_L P dif x + Q dif y + R dif z = limits(integral.double)_Phi ((partial R)/(partial y) - (partial Q)/(partial z)) dif y dif z + ((partial P)/(partial z) - (partial R)/(partial x)) dif z dif x + ((partial Q)/(partial x) - (partial P)/(partial y) d x d y) = \
		limits(integral.double)_Phi mat(delim: "|",
			cos alpha, cos beta, cos y;
			(partial)/(partial x), (partial)/(partial y), (partial)/(partial z);
			P, Q, R
		) dif S
	$
	Теорема доказана.
]
