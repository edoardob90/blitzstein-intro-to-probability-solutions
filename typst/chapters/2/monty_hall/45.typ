+ 

+ Since the prizes are independent for each door, and since the strategy is
switch doors every time, what is behind Door $1$ is irrelevant. 

Possible outcomes for doors $2$ and $3$ are Goat and Car with probability $2pq$,
in which case the contestant wins, Car and Car with probability $p^{2}$, in
which case the contestant wins again, and Goat and Goat with probability $q^
{2}$, in which case the contestant loses.

Thus, $P(S) = (p^2 + 2pq)/(p^2 + 2pq + q^{2)} = (p^2 + 2pq)/((p+q)^
{2)} = p^{2} + 2pq.$

+ There are two scenarios in which Monty opens Door $2$. Either Door $3$
contains a Car and Door $2$ contains a Goat, which happens with probability
$pq$, or both doors contain Goats and Monty randomly chooses to open Door $2$,
which happens with probability $(1)/(2)q^{2}$. Contestant wins in the first
case and loses in the second case.

Thus, $P(S|D_{2}, G_{2}) = (pq)/(pq + \frac{1){2}q^{2}}.$