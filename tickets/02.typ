#import "../functions.typ": theorem
= Повехностный интеграл первого рода и теорема о его существовании
Пусть:
+ $Phi$ --- гладкая поверхность, заданная параметрически: $ overline(r) = overline(r)(u,v) = (x(u,v), y(u,v), z(u,v))(u,v) $
+ $forall i = overline(1\, n) space D_i$ квадрируема, $tau = {D_i}_(i = overline(1\,n))$ --- разбиение $D$, $Delta_tau$ --- диаметр разбиения 
+ $forall i = overline(1\, n) space exists Phi_i$ --- часть поверхности, соответствующая $D_i$
+ $f(x,y,z)$ определена на всех точках поверхности $Phi$
+ $Delta S_i$ --- площади частей поверхности
+ $ sigma(tau) = sum_(i = 0)^n f(x(u_i,v_i), y(u_i, v_i), z(u_i, v_i)) Delta S_i $

Поверхностный интерал первого рода:
$ limits(integral.double)_Phi f(x,y,z) d S = I <=>  exists lim_(Delta_tau -> 0) sigma(tau) = I $

#theorem(
	name: "Теорема о существовании поверхностного интеграла первого рода",
	breakline: true
)[
		$Phi$ --- гладкая поверхность, $forall phi in Phi$ $f(x,y,z)$ непрерывна в точке $phi$ $=>$ $exists limits(integral.double)_Phi f(x, y, z) = limits(integral.double)_D f(x(u,v), y(u,v), z(u,v)) sqrt(A^2 + B^2 + C^2) d u d v = limits(integral.double)_D f(x(u,v), y(u, v), z(u, v)) sqrt(E G - F^2) d u d v$
][
	$ ] I^* = limits(integral.double)_D f(x(u, v), y(u, v), z(u, v))  d u d v"" $
	Рассмотрим
	$ abs(I^* -  sigma(tau)) = abs(limits(integral.double)_D f(x(u, v), y(u, v), z(u, v)) sqrt(E G - F^2) d u d v - sum_(i = 1)^n f(x(u_i, v_i), y(u_i, v_i), z(u_i, v_i)) Delta S_i, size: #80%) \
	<= sum_(i = 1)^n limits(integral.double)_D_i abs(f(x(u, v), y(u, v), z(u, v)) - f(x(u_i, v_i), y(u_i, v_i), z(u_i, v_i))) sqrt(E G - F^2) d u d v \
	<= limits(max)_((u, v) in D) sqrt(E G - F ^ 2) sum_(i= 0)^n omega_i mu (D_i), "где" $
	- $E, G$ --- длины векторов касательных по $u$ и $v$ соответственно, $F$ --- скалярное произведение касательных
	- $omega_i$ --- колебание $f$ на множестве $D_i$.

	$f$ и $sqrt(E G - F^2)$ непр. на замкнутом множетсве $D$ $=>$ $limits(lim)_(Delta_tau -> 0) limits(max)_((u,v) in D) sqrt(E G - F^2) limits(sum)_(i = 0)^n omega_i mu(D_i) =0$ $=>$ $limits(lim)_(Delta_tau -> 0) sigma(tau) = I^* =>$ теорема доказана.
]
