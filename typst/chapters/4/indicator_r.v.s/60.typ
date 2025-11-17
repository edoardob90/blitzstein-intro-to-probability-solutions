+ 

+ By the story of the problem, $X \sim \text{NHGeom}(n, N-n, m)$. Then, $Y =
X + m$.

+ According to part $a$, $\text{E}(Y) = \text{E}(X) + m = \frac{m(N-n)}
{n+1} + m$. The implied indicator variables are the same as in the proof of the
expectation of Negative Hypergeometric random variables.

+ The problem can be modeled with a Hypergeometric random variable $Z
\sim \text{HGeom}(n, N-n, \text{E}(Y))$. Then, $\text{E}(Z) = \text{E}
(Y)(n)/(N) = ((m(N-n))/(n+1) + m)(n)/(N) = m times \frac{N+1}
{n+1}times
(n)/(N)$. Since $(N+1)/(n+1) times (n)/(N) < 1 arrow.r.double (n+1)N(n-N)
< 0 arrow.r.double (N-n)/((n+1)N) > 0 arrow.r.double n < N$ for positive $n$ and $N$, $
\text{E}(Z) < m$.