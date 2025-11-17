Let $I_{j}$ be the indicator variable for the $j$-th toy being of a new type.
The number of toy types after collecting $t$ toys is $X = sum_(j=1)^(t)I_{j}$.
$P(I_{j}=1) = ((n-1)/(n))^{j-1}$. Thus, $\text{E}(X) = \text{E}(\sum_{j=1}^
{t}I_{j}) = sum_(j=1)^(t)\text{E}(I_{j}) = sum_(j=1)^(t)((n-1)/(n))^{j-1}
= n - n((n-1)/(n))^{t}$