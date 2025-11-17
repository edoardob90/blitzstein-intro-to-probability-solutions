Let $A_{i}$ be the event that $i$ is never rolled for $1 lt.eq i lt.eq 6$.
The event of interested then is $\bigcup\limits_{i=1}^{6}A_{i}.$

By inclusion-exclusion, 
$P(\bigcup\limits_{i=1}^{6}A_{i}) = sum_(i=1)^(6)P(A_{i}) - 
\sum_{1 lt.eq i < j lt.eq 6}P(A_{i} sect A_{j}) + 
\sum_{1 lt.eq i < j < k lt.eq 6}P(A_{i} sect A_{j} sect A_{k}) - 
dot.c - P(\bigcap\limits_{i=1}^{6}A_{i}).$

Now,

$P(A_{i}) = \frac{5^{n}}{6^{n}} = ((5)/(6))^{n}$

$P(A_{i} sect A_{j}) = \frac{4^{n}}{6^{n}} = ((4)/(6))^{n}$

$P(A_{i} sect A_{j} sect A_{k}) = \frac{3^{n}}{6^{n}} = ((3)/(6))^{n}$

$P(A_{i} sect A_{j} sect A_{k} sect A_{w}) = \frac{2^{n}}{6^{n}} = 
((2)/(6))^{n}$

$P(A_{i} sect A_{j} sect A_{k} sect A_{w} sect A_{z}) = \frac{1^{n}}{6^{n}} = 
((1)/(6))^{n}$

$P(\bigcap\limits_{i=1}^{6}A_{i}) = 0$

Thus, 
$P(\bigcup\limits_{i=1}^{6}A_{i}) = 6((5)/(6))^{n} - 
binom(6, 2)((4)/(6))^{n} + binom(6, 3)((3)/(6))^{n} - 
binom(6, 4)((2)/(6))^{n} + binom(6, 5)((1)/(6))^{n}$