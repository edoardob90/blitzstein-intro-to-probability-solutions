+ 

+ Suppose the population consists of $n$ people (excluding me). Let $I_{j}$
be the indicator variable for the $j$-th person having the same birthday as me.
Then, the expected number of people with the same birthday as me is $\text{E}(X)
= sum_(i=1)^(n)P(I_{j}=1) = sum_(i=1)^(n)(1)/(365) = (n)/(365)$.

Let $Z \sim \text{Poss}((n)/(365))$ model the distribution of the number of
people in the population with the same birthday as me. Then, the probability
that there is at least one person with the same birthday as me is $1 - P(Z=0) =
1 - e^{-(n)/(365)}$.

$1 - e^{-(n)/(365)} >= 0.5 arrow.r.double (n)/(365) > -\ln(0.5) arrow.r.double n >
252$

+ By similar logic to part $a$, $\text{E}(X) = (binom(n, 2))/(365
times 24)$. $1
- P(Z=0) = 1 - e^{-(binom(n, 2))/(365 times 24)}$.

$1 - e^{-(binom(n, 2))/(365 times 24)} >= 0.5 arrow.r.double \frac{\binom{n}
{2}}{365 times 24} > -\ln(0.5) arrow.r.double n > 110$

+ Since Poisson approximation is completely determined by the expectation of
the underlying random variable, we need to increase the population size so
that the expectation of the number of pairs
with the desired property is the same as the expectation of the number of pairs
with the same birthday when population size is $23$. Since, $\text{E}(X) = 
(1)/(24)\text{E}(Y)$, where $Y$ is the number of pairs of people that share a
birthday, the population needs to be increased to have $24$ times
more pairs.

$binom(n, 2)= 24 * binom(23, 2) arrow.r.double n approx 110$.

+ Let $X$ be the number of triplets with the same birthday. Let $I_{j}$ be
the indicator random variable for triplet $j$ having the same birthday. Then,
$\text{E}(X) = binom(100, 3)((1)/(365))^{2} approx 1.21$. Then, $X$ can
be approximated
with $Z \sim \text{Poiss}(1.21)$. $P(\text{at
least one triplet with the same birthday}) approx 1 - P(Z=0) = 1 - e^{-1.21}
approx
0.7.$

Another way to approximate the desired probability is to let $I_{j}$ be the
indicator variable that there is a triplet born on day $j$. $P(I_{j}=1) = 1 - ((
(364)/(365))^{100} + 100(1)/(365)((364)/(365))^{99} + binom(100, 2)
(1)/(365^{2)}((364)/(365))^{98}) approx 0.003$. Then, the expected
number of days for which there is a triplet born on that day is approximately
equal to $365 * 0.003 = 1.095$.

Then, the probability that there is at least one triplet born on the same day
can be approximated using $Z \sim \text{Poiss}(1.095)$ - the number of days for
which there is a triplet born on that day. The desired probability is $1 - P
(Z=0) = 1 - e^{-1.095} approx 0.66$.

Thus, the second method is a closer approximation for the desired probability.