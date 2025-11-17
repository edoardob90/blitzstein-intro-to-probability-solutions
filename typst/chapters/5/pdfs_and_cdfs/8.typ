(a)
Let $F$ be the CDF of the Beta distribution with parameters $a=3$, $b=2$.

Due to the properties of the CDF, $F$ must be 0 for $x \le 0$ and 1 for $x \ge 1$.

For $0 < x < 1$:

$
\begin{split}
F(x)
 = int_0^x f(t) dt = int_0^x 12 t^2 (1-t) dt = 12 int_0^x t^2 dt - 12 int_0^x t^3 dt 

 = 12 \left( (x^3)/(3) - (x^4)/(4) \right) 

 = 4 x^3 - 3 x^4
\end{split}
$

Then:

$
F(x) =
\begin{cases}
0           \text{ , for } x \le 0 

x^3(4 - 3x) \text{ , for } 0 < x < 1 

1           \text{ , for } x \ge 1
\end{cases}
$

(b)
$
\begin{split}
P(0 < X < 1/2)
 = F(1/2) - F(0) = \left( (1)/(2) \right)^3 \left( 4 - (3)/(2) \right) - 0 

 = (5)/(16)
\end{split}
$

(c)
The mean of $X$ can be calculated by the definition of expectation:

$
\begin{split}
E(X)
 = int_0^1 x f(x) dx = int_0^1 12 x^3 (1-x) dx 

 = 12 int_0^1 x^3 dx - 12 int_0^1 x^4 dx = 12 \left( (1)/(4) - (1)/(5) \right) 

 = (3)/(5)
\end{split}
$

By the definition of variance:

$
\mathrm{Var}(X) = E(X^2) - (EX)^2
$

Let's calculate the second moment of $X$ by LOTUS:

$
\begin{split}
E(X^2)
 = int_0^1 x^2 f(x) dx = int_0^1 12 x^4 (1 - x) dx 

 = 12 int_0^1 x^4 dx - 12 int_0^1 x^5 dx = 12 \left( (1)/(5) - (1)/(6) \right) 

 = (2)/(5)
\end{split}
$

Substituting this value into the definition of variance:

$
\mathrm{Var}(X) = (2)/(5) - \left( (3)/(5) \right)^2 = (1)/(25)
$