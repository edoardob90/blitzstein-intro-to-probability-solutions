+ 

+ The problem fits the story of Hypergeometric distributions.

$P(X = k) = (binom(s, k)binom(100-s, 10-k))/(binom(100, 10))$
for $0 lt.eq k lt.eq s$.

+ \begin{verbatim}
> x = 75
> y_interval <- sum(dhyper(7:10, x, 100-x, 10))
> y_interval
[1] 0.7853844
\end{verbatim}