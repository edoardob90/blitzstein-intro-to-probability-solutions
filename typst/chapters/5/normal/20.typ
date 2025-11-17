(a)
$
\begin{split}
\Phi(z)
= (1)/(sqrt(2\pi)) int_{-infinity}^z e^{-x^2/2} dx 

= (1)/(sqrt(2\pi)) \left( int_{-infinity}^0 e^{-x^2/2} dx + int_0^z e^{-x^2/2} dx \right)
\end{split}
$

We know from the Normal PDF that $integral_(-infinity)^(infinity) e^{-x^2/2} dx = sqrt(2\pi)$. Since the integrand is an even function, the integral from $-infinity$ to $0$ is half this value

$
\Phi(z) = (1)/(2) + (1)/(sqrt(2\pi)) int_0^z e^{-x^2/2} dx
$

By applying the variable substitution $u = x/sqrt(2)$ in the integral, we obtain $du = dx/sqrt(2)$. The lower and upper limits of integration become $0$ and $z/sqrt(2)$, respectively.

$
\begin{split}
\Phi(z)
= (1)/(2) + (1)/(sqrt(2\pi)) int_0^{z/sqrt(2)} e^{-u^2} sqrt(2) \, du 

= (1)/(2) + (1)/(2) (2)/(sqrt(\pi)) int_0^{z/sqrt(2)} e^{-u^2} du
\end{split}
$

$
\Phi(z) = (1)/(2) + (1)/(2) \, \mathrm{erf} \left( (z)/(sqrt(2)) \right)
$

(b)
$
\mathrm{erf}(z) = (2)/(sqrt(\pi)) int_0^z e^{-x^2} dx
$

The integrand is an even function, so the integrals from 0 to $z$ and from $-z$ to 0 are the same

$
\begin{split}
\mathrm{erf}(z)
= (2)/(sqrt(\pi)) int_{-z}^0 e^{-x^2} dx 

= - (2)/(sqrt(\pi)) int_0^{-z} e^{-x^2} dx
\end{split}
$

$
\mathrm{erf}(-z) = -\mathrm{erf}(z)
$