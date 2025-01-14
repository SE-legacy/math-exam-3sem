#import "../functions.typ": theorem

= Формула Остроградского-Гаусса
#theorem[
	$] V$ --- простая замкнутая область, граница положительно ориентирована.

	$
		P(x,y,z), Q(x,y,z), R(x,y,z) in C^1_V => \
		limits(integral.double)_Phi P dif y dif z + Q dif z dif x + R dif x dif y = limits(integral.triple)_V (frac(diff P, diff x) + frac(diff Q, diff y) + frac(diff R, diff z)) dif x dif y dif z
	$
][
	Докажем
	$ limits(integral.double)_Phi R(x, y, z) dif x dif y = limits(integral.triple)_V frac(diff R, diff z) dif x dif y dif z. $
	$
	limits(integral.triple)_V frac(diff R, diff z) dif x dif y dif z = limits(integral.double)_D_(x y) d x d y limits(integral)_(phi_1(x, y))^(phi_2(x,y)) frac(diff R, diff z) dif z = \
	= limits(integral.double)_D_(x y) R(x, y, phi_2(x,y)) dif x dif y - limits(integral.double)_D_(x y) R(x, y, phi_1(x, y)) dif x dif y) = \
	= underbrace(limits(integral.double)_Phi_1 R dif x dif y, "нижняя сторона") + underbrace(limits(integral.double)_Phi_2 dif x dif y, "верхняя сторона") + underbrace(limits(integral.double)_Phi_3 dif x dif y, = 0", боковая сторона") = limits(integral.double)_Phi R dif x dif y
	$
	Теорема доказана.
]
// в методичке есть продолжение, но оно выглядит избыточным: мы как будто дзываем то же самое равенство
