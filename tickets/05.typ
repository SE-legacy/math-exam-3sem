#import "../functions.typ": theorem, lets

= Формула Остроградского-Гаусса
#theorem[
	#lets $V$ --- простая замкнутая область, граница положительно ориентирована, $C^1$ --- множество непрерывно дифференцируемых функций

	$
		P(x,y,z), Q(x,y,z), R(x,y,z) in C^1_V => \
		limits(integral.double)_Phi P dif y dif z + Q dif z dif x + R dif x dif y = limits(integral.triple)_V ((partial P)/(partial x) + (partial Q)/(partial y) + (partial R)/(partial z)) dif x dif y dif z
	$
][
	Докажем
	$ limits(integral.double)_Phi R(x, y, z) dif x dif y = limits(integral.triple)_V (partial R)/(partial z) dif x dif y dif z. $
	Для правильной в направлении оси $O z$ замкнутой области $V$:
	$
	limits(integral.triple)_V (partial R)/(partial z) dif x dif y dif z = limits(integral.double)_D_(x y) d x d y limits(integral)_(phi_1(x, y))^(phi_2(x,y)) (partial R)/(partial z) dif z = \
	= limits(integral.double)_D_(x y) R(x, y, phi_2(x,y)) dif x dif y - limits(integral.double)_D_(x y) R(x, y, phi_1(x, y)) dif x dif y) = \
	= underbrace(limits(integral.double)_Phi_1 R dif x dif y, "нижняя сторона") + underbrace(limits(integral.double)_Phi_2 dif x dif y, "верхняя сторона") + underbrace(limits(integral.double)_Phi_3 dif x dif y, = 0", боковая сторона") = limits(integral.double)_Phi R dif x dif y
	$
	Задавая разбиение $V = {V_k: V_k "ограничена кусочно-гладкой поверхностью" Phi_k}_(k=overline(1\,m))$, имеем
	$ limits(integral.double)_Phi_k R(x, y, z) dif x dif y = limits(integral.triple)_V_k (partial R)/(partial z) dif x dif y dif z, k = overline(1\,m), $
	причём
	$ limits(sum)_(k = 1)^m limits(integral.double)_Phi_k R(x, y, z) dif x dif y = limits(sum)_(k = 1)^m limits(integral.triple)_V_k (partial R)/(partial z) dif x dif y dif z = limits(integral.triple)_V (partial R)/(partial z) dif x dif y dif z $
	Это, в свою очередь, равно интегралу по поверхности $Phi$, так как не входящие в поверхность $Phi$ частичные области интегрируются дважды с выбором противоположных сторон, что приводит к их взаимному уничтожению.

	Аналогично доказываются равенства для $Q$ и $R$, сумма трёх равенств является доказательством.
]
// в методичке есть продолжение, но оно выглядит избыточным: мы как будто дзываем то же самое равенство
