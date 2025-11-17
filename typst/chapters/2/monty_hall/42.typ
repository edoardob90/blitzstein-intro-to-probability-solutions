Let $G_{i}$ be the event that the $i$-th door contains a goat, and let
$D_{i}$ be the event that Monty opens door $i$.

Let $S$ be the event of success under the specified strategy.

+ 

+ $
P(S) = P(G_{1})P(S|G_{1}) + P(G_{1}^{c})P(S|G_{1}^{c}) 

= (2)/(3)p + 0 

= (2)/(3)p.
$

Note that when $p=1$, the problem reduces to the basic Monty Hall problem,
and we get the correct solution $(2)/(3)$. In the case when $p=0$, Monty
never gives the contestant a chance to switch their initial, incorrect choice to
the correct one, resulting in a definite failure under the specified strategy.

+ $
P(G_{1}|D_{2}) = \frac{P(G_{1})P(D_{2}|G_{1})}{P(D_{2})} 

= \frac{P(G_{1})P(D_{2}|G_{1})}{P(G_{1})P(D_{2}|G_{1}) + P(G_{1}^{c})P(D_{2}|G_
{1}^{c})} 

= (\frac{2)/(6)p}{(2)/(6)p + (1)/(6)} 

= (2p)/(2p+1).
$

Note that if $p=1$, the problem reduces to the basic Monty Hall problem,
and the solution matches that of the basic, conditional Monty Hall problem.
If $p=0$ on the other hand, then the reason Monty has opened a door is
because the contestant's initial guess (Door $1$) is correct. By choosing the
strategy to switch, the contestant always loses.