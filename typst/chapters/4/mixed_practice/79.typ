+ 

+ Let $X \sim FS((1)/(m))$ be the number of guesses made by the hacker.
Then, $\text{E}(X) = m$.

+ Suppose $w_{1}, w_{2}, w_{3}, ..., w_{m}$ is the sequence of passwords
sampled by the hacker. Since, every permutation of the $m$ words is equally
likely, the probability that the correct password is $w_{i}$ is $\frac{(m-1)!}
{m!} = (1)/(m)$. Then $\text{E}(X) = (1)/(m)sum_(i=1)^(m)i = \frac{1}
{m}(m(m+1))/(2) = (m+1)/(2)$.

+ Both $m$ and $(m+1)/(2)$ are positively sloped lines, intersecting at
$m=1$. For $m=2$, $m > (m+1)/(2)$. Thus, $m > (m+1)/(2)$ for all $m >
1$. This makes intuitive sense since when the hacker samples passwords without
replacement, the number of possible passwords reduces.

+ With replacement, $P(X = k) = ((m-1)/(m))^{k-1}(1)/(m)$ for $1
lt.eq k < n$ and $P(X=n) = ((m-1)/(m))^{n-1}(1)/(m) + ((m-1)/(m))^
{n}$.

In the case of sampling without replacement, since all orderings of the passwords
sampled by the hacker are equally likely, $P(\text{hacker samples k passwords})
= (1)/(m)$ for $1 lt.eq k < n$, and $P(\text{hacker samples n passwords}) =
(1)/(m) + (m-n)/(m)$.