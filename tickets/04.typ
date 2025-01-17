#import "../functions.typ": theorem
биба
#set page(height:  auto)
#set math.equation(numbering: none)
= Формула Стокса
#theorem(name: "Теорема Стокса")[
	$] G$ --- некоторая область, $Phi$ --- дважды непр. дифф. поверхность, $P, Q, R$ --- непр. дифф. функции, $Phi subset G$, $P, Q, R$ опр. на $G$

	$Phi$ и $L = diff Phi$ согласованы по правилу штопора $=>$
	$
		limits(integral.double)_Phi mat(delim: "|",
			cos alpha, cos beta, cos y;
			frac(diff, diff x), frac(diff, diff y), frac(diff, diff z);
			P, Q, R
		) dif S
	$
][
	Докажем, что 
	$ integral.cont P d x = limits(integral.double)_Phi frac(diff P, diff z) dif x dif z - limits(integral.double)_Phi frac(diff P, diff y) dif x dif y $
	1. Преобразуем левую часть. $] diff D$ --- контур, заданный параметрическими уравнениями
	$ u = u(t), v = v(t), t in T = [t_1, t_2] $
	Тогда параметрические уравнения, задающие контур $L$, имеют вид 
	$ x = x(u(t), v(t)), y = y(u(t), v(t)), z = z(u(t), v(t)), t in T $
	$ limits(=>)^("по формуле для вычисления" integral.cont "второго рода") $
	$ limits(integral.cont)_L P d x = limits(integral)_(t_1)^t_2 P(frac(diff x, diff u) u'(t) + frac(diff x, diff v) v'(t)) dif t = \
	= limits(integral.cont)_(L*) P(x(u,v), y(u,v), z(u,v))(frac(diff x, diff y) dif u + frac(diff x, diff v) d v) = limits(integral.cont)_(L*) P frac(diff x, diff u) dif u + P frac(diff x, diff v) dif v =^"по формуле Грина" \
	= limits(integral.double)_D ((frac(diff P, diff x) frac(diff x, diff u) + frac(diff P, diff y) frac(diff y, diff u) + frac(diff P, diff z) frac(diff z, diff u)) frac(diff x, diff v) + P frac(diff^2 x, diff u diff v)) dif u dif v - \
	- limits(integral.double)_D ((frac(diff P, diff x) frac(diff x, diff v) + frac(diff P, diff y) frac(diff y, diff v) + frac(diff P, diff z) frac(diff z, diff v)) frac(diff x, diff u) + P frac(diff^2 x, diff u diff v)) dif u dif v = \
	= limits(integral.double)_D frac(diff P, diff z) (frac(diff z, diff u) frac(diff x, diff v) - frac(diff z, diff v) frac(diff x, diff u)) d u d v - limits(integral.double)_D frac(diff P, diff y) (frac(diff y, diff u) frac(diff x, diff v) - frac(diff y, diff v) frac(diff x, diff u)) dif u dif v = \
	= limits(integral.double)_D (frac(diff P, diff z) B - frac(diff P, diff y) C) = integral.double_Phi frac(diff P, diff z) dif z dif x - frac(diff P, diff y) dif x dif y $

	2. Аналогично доказываются равенства
	$ limits(integral.cont)_L Q dif y = integral.double_Phi frac(diff Q, diff x) dif x dif y - frac(dif Q, dif z) dif y dif z, $
	$ limits(integral.cont)_L R dif z = integral.double_Phi frac(diff R, diff y) dif y dif z - frac(dif R, dif x) dif z dif x. $

	3. Складывая три равенства, получим
	$ limits(integral.cont)_L P dif x + Q dif y + R dif z = limits(integral.double)_Phi (frac(diff R, diff y) - frac(diff Q, diff z)) dif y dif z + (frac(diff P, diff z) - frac(diff R, diff x)) dif z dif x + (frac(diff Q, diff x) - frac(diff P, diff y) d x d y) = \
		limits(integral.double)_Phi mat(delim: "|",
			cos alpha, cos beta, cos y;
			frac(diff, diff x), frac(diff, diff y), frac(diff, diff z);
			P, Q, R
		) dif S
	$
	Теорема доказана.
]
