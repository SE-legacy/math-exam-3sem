#import "../functions.typ" : theorem, definition, lets, consequence
= Среднее квадратичное отклонение, теорема о наилучшем приближении и неравенство Бесселя.
#definition[$(f_n)$ сходится в среднем к $f$ на $[a, b]$ $<==>^(d f)$ $limits(lim)_(n -> infinity) limits(integral)_a^b (f_n(x) - f(x))^2 dif x = 0$]

#theorem(name: [Теорема  наилучшем приближении])[
	#lets $T_n$ --- множество тригонометрических многочленов порядка $n$, $r_n (x, T)$ --- среднее квадратическое отклонение $T(x)$ от $f(x)$,

	$S_n (x) = frac(a_0, 2) + limits(sum)_(k = 1)^n (a_k cos k x + b_k sin x k)$ --- $n$-ая частная сумма Фурье.

	$f in Re_[-pi, pi] => r_n (x, S_n) = limits(min)_(T in T_n) r_n (x, T)$, причём
	$ frac(1, pi) limits(integral)_(-pi)^pi (f(x)-S_n (x))^2 dif x = frac(1,pi) limits(integral)_(-pi)^pi f^2 (x) dif x - [frac(a_0^2, 2) + limits(sum)_(k=1)^n (a_k^2 + b_k^2)] $
][
	Возмём произвольный многочлен порядка $<= n$:
	$ T_n(x) = frac(p_0, 2) + limits(sum)_(k = 1)^n (p_k cos k x + q_k sin k x) $
	Тогда среднее квадратичное отклонение $T_n (x)$ от $f(x)$:
	$ r_n (x) = frac(1, pi) limits(integral)_(-pi)^pi (f(x) - T_n(x))^2 dif x = frac(1, pi) limits(integral)_(-pi)^pi f^2 (x) dif x - 2 frac(1, pi) limits(integral)_(-pi)^pi f(x) T_n (x) dif x + frac(1, pi) limits(integral)_(-pi)^pi T_n^2 (x) dif x $

	$
		cases(
			reverse: #true,
			dot frac(1, pi) limits(integral)_(-pi)^pi f(x) T_n (x) dif x = frac(1, pi) limits(integral)_(-pi)^pi f(x) [frac(p_0, 2) + limits(sum)_(k = 1)^n (p_k cos k x + q_k sin k x)] dif x = frac(a_0 p_0, 2) + limits(sum)_(k = 1)^n (a_k p_k + b_k q_k)\,,\ \ \
			dot frac(1, pi) limits(integral)_(-pi)^pi T_n^2 (x) dif x = frac(1, pi) limits(integral)_(-pi)^pi [frac(p_0, 2) + limits(sum)_(k = 1)^n (p_k cos k x + q_k sin k x)]^2 (x) dif x = \
				= frac(1, pi) limits(integral)_(-pi)^pi frac(p_0^2, 4) dif x + frac(1, pi) limits(integral)_(-pi)^pi limits(sum)_(k = 1)^n (p_k^2 cos^2 k x + q_k^2 sin^2 k x) dif x =^"по св-ву ортогональности"_"тригонометрической сис-мы" frac(p_0^2, 2) + limits(sum)_(k = 1)^n (p_k^2 + q_k^2)
		) => \
		=> r_n (x) = (frac(1, pi) limits(integral)_(-pi)^pi f^2 (x) dif x) - (a_0 p_0 + 2 limits(sum)_(k = 1)^n (a_k p_k + b_k q_k)) + (frac(p_0^2, 2) + limits(sum)_(k = 1)^n (p_k^2 + q_k^2)) = \
	= frac(1, pi) limits(integral)_(-pi)^pi f^2 (x) dif x - [frac(a_0^2, 2) + limits(sum)_(k = 1)^n (a_k^2 + b_k^2)] + \
		+ [frac(a_0^2, 2) + limits(sum)_(k = 1)^n (a_k^2 + b_k^2) - a_0 p_0 - 2 limits(sum)_(k = 1)^n (a_k p_k + b_k q_k) + frac(p_0^2, 2) + limits(sum)_(k = 1)^n (p_k^2 + q_k^2) ] = \
		= frac(1, pi) limits(integral)_(-pi)^pi f^2 (x) dif x - [ frac(a_0^2, 2) + limits(sum)_(k = 1)^n (a_k^2 + b_k^2)] + \
		+ [frac((a_0-p_0)^2, 2) + limits(sum)_(k = 1)^n (a_k - p_k)^2 + limits(sum)_(k = 1)^n (b_k - q_k)^2]
	$
	$(r_n (x) "минимальна" <=> [frac((a_0 - p_0)^2, 2) + limits(sum)_(k = 1)^n (a_k - p_k)^2 + limits(sum)_(k = 1)^n (b_k - q_k)^2] = 0) => p_0 = a_0, p_k = a_k, q_k = b_k, k = overline(1\,n) => T_n (x) = S_n (x)$

	При этом
	$ frac(1, pi) limits(integral)_(-pi)^pi (f(x) - S_n(x))^2 dif x = frac(1, pi) limits(integral)_(-pi)^pi f^2 (x) dif x - [frac(a_0^2, 2) + limits(sum)_(k = 1)^n (a_k^2 + b_k^2)] $
]

#consequence(name: "Неравенство Бесселя")[
	$f in Re_[-pi, pi] => frac(a_0^2, 2) + limits(sum)_(k = 1)^infinity (a_K^2 + b_k^2) <= frac(1, pi) limits(integral)_(-pi)^pi f^2 (x) dif x$
][
	$ frac(1, pi) limits(integral)_(-pi)^pi (f(x)-S_n (x))^2 dif x >= 0 => forall n in NN space space frac(a_0^2, 2) + limits(sum)_(k = 1)^n (a_k^2 + b_k^2) <= frac(1, pi) limits(integral)_(-pi)^pi f^2 (x) dif x $
	Осталось перейти к пределу при $n -> infinity$.
]
