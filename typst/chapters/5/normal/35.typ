Let $g(Z) = max(Z-c, 0)$. We have $g(Z) = 0$ for $Z < c$ and $g(Z) = Z-c$ for $Z>c$.

Then 

$E(g(Z)) = integral_(-infinity)^(infinity)g(k)\varphi(k)dk = integral_(c)^(infinity)(k-c)\varphi(k)dk$

since the expression inside the integral is 0 for $k<c$. Next we have

$integral_(c)^(infinity)(k-c)\varphi(k)dk = integral_(c)^(infinity)\frac{ke^{-k^{2}/2}}{sqrt(2\pi)}dk  - integral_(c)^(infinity)c\varphi(k)dk = \frac{e^{-c^{2}/2}}{sqrt(2\pi)} - cintegral_(-infinity)^(-c)\varphi(k) = \varphi(c) - c\Phi(c)$

with the first equality following from splitting the integral via subtraction and expanding out $\varphi$ for the left integral, the second equality comes from observing that the antiderivative of $k\varphi(k)$ is $-\varphi(k)$ and that we can change the limits of the right integral due to the symmetry of tail areas of the curve of $\varphi$, and the last equality comes from applying the definitions of the PDF and CDF of the standard normal distribution.