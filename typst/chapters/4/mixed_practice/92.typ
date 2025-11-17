+ 

+ Let $S$ be the sum of the ranks of the dishes we eat during both phases.
$S = (m-k+1)X + sum_(j=1)^(k-1)R_{j}$, where $R_{j}$ is the rank of dish $j$,
excluding the highest ranked dish, from the exploration phase. Since $\text{E}
(R_{j}) = ((X-1)X)/(2) times (binom(X-2, k-2))/((k-1)binom(X-1, k-1))
=
((X-1)X)/(2) times (1)/(X-1) = (X)/(2)$, $
\text{E}(S) = (m-k+1)\text{E}(X) + (k-1)\frac{\text{E}(X)}{2} = (m-k)\text{E}
(X) + (k+1)\frac{\text{E}(X)}{2}.$

+ $P(X = x) = (binom(x-1, k-1))/(binom(n, k)).$

+ \begin{flalign}
\text{E}(X)  = (1)/(binom(n, k))sum_(i=k)^(n)ibinom(i-1, k-1) \nonumber 

 = (1)/(binom(n, k))sum_(i=k)^(n)kbinom(i, k) \nonumber 

 = (k)/(binom(n, k))\sum_
{i=k}^{n}binom(i, k) \nonumber 

 = (k)/(binom(n, k))binom(n+1, k+1) \nonumber 

 = (k(n+1))/(k+1) \nonumber
\end{flalign}

+ Plugging $(k(n+1))/(k+1)$ into the result of part $b$ and derivating $
(m-k)(k(n+1))/(k+1) + k(n+1)/(2)$ with respect to $k$
provides an extremum of $k = sqrt(2(m+1)) - 1$.