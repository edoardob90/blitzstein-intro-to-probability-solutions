If the $k$-th person's arrival results in the first birthday match, the first
$k-1$ people have $365*364*dot.c*(365-k+2)$ choices of birthday assignments
such that no two people have the same birthday. The $k$-th person has $k-1$
choices of birthdays, since their birthday must match that of one of the first 
$k-1$ people.

Thus,

$P(X=k) = (365*364*dot.c*(365-k+2))/(365^{k-1)} (k-1)/(365)$