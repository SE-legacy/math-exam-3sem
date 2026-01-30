#import "../functions.typ": theorem, definition, equ, lets
= Повехностный интеграл первого рода и теорема о его существовании

Пусть:
+ $Phi$ --- гладкая поверхность, заданная параметрически:

  #equ($ overline(r) = overline(r)(u,v) = (x(u,v), y(u,v), z(u,v))(u,v). $, id:<eq:eq7>)
+ $forall i = overline(1\, n) space D_i$ квадрируема, $tau = {D_i}_(i = overline(1\,n))$ --- разбиение $D$, $Delta_tau$ --- диаметр разбиения.
+ $forall i = overline(1\, n) space exists Phi_i$ --- часть поверхности, соответствующая $D_i$.
+ $f(x,y,z)$ определена на всех точках поверхности $Phi$.
+ $Delta S_i$ --- площади частей поверхности.
+ $ sigma(tau) = sum_(i = 0)^n f(x(u_i,v_i), y(u_i, v_i), z(u_i, v_i)) Delta S_i. $

#definition()[
  Если существует предел $I$ при $Delta_tau -> 0$ интегральной суммы $sigma(tau)$, он называется *поверхностным интегралом первого рода* от функции $f$ по поверхностности $Phi$ и обозначается

  $ I = limits(integral.double)_Phi f(x,y,z) d S. $
]

#theorem(
	name: "Теорема (о существовании поверхностного интеграла первого рода)",
)[
	$Phi$ --- гладкая поверхность, имеющая параметрическое представление (@eq:eq7), и функция $f(x,y,z)$ непрерывна во всех точках $Phi$. Тогда поверхностный интеграл первого рода существует и

  $ limits(integral.double)_Phi f(x, y, z) = limits(integral.double)_D f(x(u,v), y(u,v), z(u,v)) sqrt(A^2 + B^2 + C^2) d u d v = \
  = limits(integral.double)_D f(x(u,v), y(u, v), z(u, v)) sqrt(E G - F^2) d u d v. $
][
	$ lets I^* = limits(integral.double)_D f(x(u, v), y(u, v), z(u, v)) sqrt(E G - F^2) d u d v. $
	Рассмотрим
	$ abs(I^* -  sigma(tau)) = abs(I^* - sum_(i = 1)^n f(x(u_i, v_i), y(u_i, v_i), z(u_i, v_i)) Delta S_i, size: #80%) <= \
	<= sum_(i = 1)^n limits(integral.double)_D_i abs(f(x(u, v), y(u, v), z(u, v)) - f(x(u_i, v_i), y(u_i, v_i), z(u_i, v_i))) sqrt(E G - F^2) d u d v <= \
	<= limits(max)_((u, v) in D) sqrt(E G - F ^ 2) sum_(i= 0)^n omega_i mu (D_i), $

  где
	- $E, G$ --- длины векторов касательных по $u$ и $v$ соответственно, $F$ --- скалярное произведение касательных
	- $omega_i$ --- колебание $f$ на множестве $D_i$.

	Функции $f$ и $sqrt(E G - F^2)$ непрерывны на замкнутом множестве $D$, тогда

  $ limits(lim)_(Delta_tau -> 0) limits(max)_((u,v) in D) sqrt(E G - F^2) limits(sum)_(i = 0)^n omega_i mu(D_i) = 0 ==> \ 
  limits(lim)_(Delta_tau -> 0) sigma(tau) = I^*. $
]
