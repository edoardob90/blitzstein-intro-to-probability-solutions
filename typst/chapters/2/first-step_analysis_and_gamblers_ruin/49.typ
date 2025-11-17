+ 

+ $
P(A_{2}) = p_{1}p_{2} + q_{1}q_{2} 

= (1-q_{1})(1-q_{2}) + \left(b_{1} + (1)/(2)\right)\left(b_{2} + \frac{1}
{2}\right) 

= \left(b_{1} - (1)/(2)\right)\left(b_{2} - (1)/(2)\right) + \left(b_
{1} + (1)/(2)\right)\left(b_{2} + \frac{1}
{2}\right) 

= (1)/(2) + 2b_{1}b_{2}
$

+ By strong induction, $P(A_{n}) = (1)/(2) + 2^{n-1}b_{1}b_{2}...b_{n}$ for
$n lt.eq 2.$

Suppose the statement holds for all $n lt.eq k-1$.
Let $S_{i}$ be the event that the $i$-th trial is a success.

$
P(A_{k}) = p_{k}P(A_{k-1}^{c} | S_{k}) + q_{k}P(A_{k-1} | S_{k}^{c}) 

= p_{k}\left(1 - \left((1)/(2) + 2^{k-2}b_{1}b_{2}...b_{k-1}\right)\right)
+ q_{k}\left((1)/(2) + 2^{k-2}b_{1}b_{2}...b_{k-1}\right) 

= p_{k}\left((1)/(2) - 2^{k-2}b_{1}b_{2}...b_{k-1}\right) + q_{k}\left(
(1)/(2) + 2^{k-2}b_{1}b_{2}...b_{k-1}\right) 

= (1)/(2) + (q_{k} - p_{k})2^{k-2}b_{1}b_{2}...b_{k-1} 

= (1)/(2) + 2b_{k}2^{k-2}b_{1}b_{2}...b_{k-1} 

= (1)/(2) + 2^{k-1}b_{1}b_{2}...b_{k-1}b_{k}
$

+ if $p_{i} = (1)/(2)$ for some $i$, then $b_{i} = 0$ and $P(A_{n}) = \frac{1}
{2}.$

if $p_{i} = 0$ for all $i$, then $b_{i} = (1)/(2)$ for all $i$. Hence,
the term $2^{k-1}b_{1}b_{2}...b_{k-1}b_{k}$ equals $(1)/(2)$. Thus, $P(A_
{n}) = 1.$ This makes sense since the number of successes will be $0$, which is
an even number.

if $p_{i} = 1$ for all $i$, then $b_{i} = -(1)/(2)$ for all $i$. Hence, the
term $2^{k-1}b_{1}b_{2}...b_{k-1}b_{k}$ will either equal to $(1)/(2)$ or $-
(1)/(2)$ depending on the parity of the number of trials. Thus, $P(A_{n})$
is either $0$ or $1$ depending on the parity of the number of trials.

This makes sense since, if every trial is a success, the number of successes
will be even if the number of trials is even. The number of successes will be
odd otherwise.