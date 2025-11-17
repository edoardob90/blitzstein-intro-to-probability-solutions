+ 

+ Note that the distribution is not Binomial, since the guesses are not
independent of each other. If, for instance, the woman guesses the first three
cups to be milk-first, and she is correct, then the probability of her guessing
milk-first on subsequent guesses is $0$, since it is known in advance that there
are only $3$ milk-first cups.

Hypergeometric story fits. Let $X_{i}$ be the probability that the lady guesses
exactly $i$ milk-first cups correctly.

$P(X_{i}) = (binom(3, i)binom(3, 3-i))/(binom(6, 3))$

Thus, $P(X_{2}) + P(X_{3}) = (10)/(binom(6, 3)) = (1)/(2)$

+ Let $M$ be the event that the cup is milk first, and let $T$ be the event
that the lady claims the cup is milk first. Then,

$(P(M|T))/(P(M^{c)|T)} = (P(M))/(P(M^{c))}\frac{p_{1}}{1-p_{2}} = \frac{p_{1}}{1-p_{2}}$