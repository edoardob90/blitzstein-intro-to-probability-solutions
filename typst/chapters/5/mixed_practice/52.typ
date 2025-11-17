a. From the definition of expectation

$
bb(E)[X] = int_{-infinity}^infinity x f(x) dx = int_0^infinity x^2 e^{-x^2/2} dx
$

The integral in the above equation is similar to the integral that arises when calculating the second moment of a standard Normal distribution.
Let $Z \sim cal(N)(0,1)$, with PDF $\varphi$.
We know that $bb(E)[Z]=0$ and $\mathrm{Var}(Z)=1$.
From the definition of variance,

$
\mathrm{Var}(Z) = bb(E)[Z^2] - (bb(E)[Z])^2 = bb(E)[Z^2] - 0 = 1
$

$
bb(E)[Z^2]
= int_{-infinity}^infinity z^2 \varphi(z) dz
= int_{-infinity}^infinity z^2 (1)/(sqrt(2\pi)) e^{-z^2/2} dz
= 1
$

$
int_{-infinity}^infinity z^2 e^{-z^2/2} dz = sqrt(2\pi)
$

Since the integrand is an even function, the integral in $(0,infinity)$ is half this value. Therefore,

$
bb(E)[X] = \frac{sqrt(2\pi)}{2} = sqrt((\pi)/(2))
$ 

b.

\begin{flalign*}
    bb(E)[X^2]  = integral_(0)^(infinity) x^2 f(x) dx 

     = integral_(0)^(infinity) x^3 e^{-(x^2)/(2)} dx 

     = integral_(0)^(infinity) 2 u e^{-u} du 

\end{flalign*}

The last integral is similar to the integral that arises when calculating the expected value of $Y \sim \mathrm{Expo}(1)$.
We know that $bb(E)[Y] = 1$,

$
bb(E)[Y] = int_0^infinity y e^{-y} dy = 1
$

It then follows that $bb(E)[X^2] = 2$