Suppose $w = r = 1$. The white ball is equally likely to be any of the $w+b$
balls. Also, note that the event {\it $k$-th drawn ball is the white ball } is
equivalent to the event {\it $k-1$ black balls are drawn until the white ball is
drawn}. Thus, for $X \sim \text{NHGeom}(1, n-1, 1)$, $P(X = k) = P(k+1\text{-th
drawn ball is white}) = (1)/(n)$ for $0 lt.eq k lt.eq n-1$.

$P(X = k) = (binom(1+k-1, 1-1)binom(1+n-1-1-k, 1-1))/(
binom(1+n-1, 1)) = (1)/(n)$