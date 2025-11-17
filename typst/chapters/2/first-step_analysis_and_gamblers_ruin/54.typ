+ 

+ $p_{k} = pp_{k-1} + qp_{k+1}$ with boundary condition $p_{0}=1.$

+ Let $A_{j}$ be the event that the drunk reaches $k$ before reaching $-j$.
Then, $A_{j} subset.eq A_{j+1}$ since to reach $-(j+1)$ the drunk needs to pass
$-j$. Note that $\bigcup\limits_{j=1}^{infinity} A_{j}$ is equivalent to
the event that the drunk ever reaches $k$, since the complement of this
event, namely the event that the drunk reaches $-j$ before reaching $k$
for all $j$ implies that the drunk never has the time to reach $k$. 

By assumption, $P(\bigcup\limits_{j=1}^{infinity} A_{j}) = \lim_{n \to +infinity}
P(A_{n}).$ $P(A_{n})$ can be found as a result of a gambler's ruin problem.

If $p=(1)/(2)$, $P(A_{n}) = (n)/(n + k) arrow.r 1.$

If $p > (1)/(2)$, $P(A_{n}) = (1 - \left(\frac{q)/(p)\right)^{n}}{1 -
\left((q)/(p)\right)^{n + k}} arrow.r 1.$

If $p < (1)/(2)$, $P(A_{n}) = (1 - \left(\frac{q)/(p)\right)^{n}}{1 -
\left((q)/(p)\right)^{n + k}} arrow.r \left((p)/(q)\right)^{k}.$