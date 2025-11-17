+ 

+ Let $X = sum_(i=1)^(52)I_{i}$ be the number of cards that are called
correctly. $\text{E}(X) = sum_(i=1)^(52)P(I_{i}=1) = 52(1)/(52) = 1$.

+ Source: \url{https://math.stackexchange.com/a/1078747/649082}

Let $X = sum_(i=1)^(52)I_{i}$ be the number of cards that are
called
correctly. $\text{E}(X) = sum_(i=1)^(52)P(I_{i}=1)$. To find $P(I_{i}=1)$,
consider the first $i$ cards, with the $i$-th card correctly guessed. Let
$k$ be the number of correctly guessed cards within the $i$ cards. For instance,
for $i=5$, $k=2$, $Y$ representing a correctly guessed card and $N$ representing
an incorrectly guessed card, one possible sequence of $i$ draws is $NYNNY$.

$P(NYNNY) = (51)/(52)(1)/(51) times (50)/(51)\frac{49}
{50}(1)/(49) = (1)/(52) times (1)/(51)$ Notice that
the second $N$ in the sequence has probability $(50)/(51)$,
because the second card is guessed correctly. The only piece
of information we have is that the third card is not the card that
was correctly guessed, leaving a total of $51$ possibilities. Generalizing, the
probability of a string of length $i$ with $k$ $Y$s is $((52-k)!)/(52!)$.
There are $binom(i-1, k-1)$ strings of length $i$ with $k$ $Y$s that end in a
$Y$, and since $1 lt.eq k lt.eq i$, $P(I_{i}=1) = sum_(k=1)^(i)binom(i-1, k-1)
((52-k)!)/(52!)$

Thus,

$
\text{E}(X) = sum_(i=1)^(52)sum_(k=1)^(i)binom(i-1, k-1)((52-k)!)/(52!) 

= sum_(k=1)^(52)sum_(i=k)^(52)binom(i-1, k-1)((52-k)!)/(52!) 

= sum_(k=1)^(52)(((52-k)!)/(52!)sum_(i=k)^(52)binom(i-1, k-1)) 

= sum_(k=1)^(52)(((52-k)!)/(52!)binom(52, k)) 

= sum_(k=1)^(52)(1)/(k!)
$

Note that $e^{x} = sum_(i=0)^(infinity)\frac{x^{i}}{i!} arrow.r.double e^{1} approx 1
+
\text{E}(X) + 10^{-15}$. Thus, $\text{E}(X) approx e - 1$.

+ Since at any given time, we know all the cards remaining in the deck, the
probability of the $i$-th card being the card guessed correctly is $\frac{1}
{52-i+1}$. Thus, $\text{E}(X) = sum_(i=1)^(52)\text{E}(I_{i}) = sum_(i=1)^(52)P
(I_{i}=1) = sum_(i=1)^(52)(1)/(52-i+1) = sum_(i=0)^(51)(1)/(52-i)
approx 4.54$.