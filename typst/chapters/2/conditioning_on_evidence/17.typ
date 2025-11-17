+ 

+ $P(B|A) = (P(B)P(A|B))/(P(B)P(A|B) + P(B^{c))P(A|B^{c})} = 1 
arrow.r.double P(B^{c})P(A|B^{c}) = 0$.

Since $P(B^{c}) eq.not 0$ by assumption, $P(A|B^{c}) = 0 
arrow.r.double P(A^{c}|B^{c}) = 1$.

+ Let $A$ and $B$ be independent events. 
Then, $P(B|A) approx 1 arrow.r.double P(B) approx 1$.
Thus, $P(B^{c}) approx 0$, and so the term $P(A|B^{c})$ in the denominator in 
part $a$ may be large,
implying $P(A^{c}|B^{c}) approx 0$.

For example, consider a deck of $52$ cards, where all but one of the cards are 
the Queen of Spades.
Let $A$ be the event that the first turned card is a Queen of Spades, 
and let $B$ be the event that the second turned card is a Queen of Spades, where
sampling is done with replacement. Then, $P(A) = P(B) approx 1$.
Then, by independence, $P(A|B^{c}) approx 1 arrow.r.double P(A^{c}|B^{c}) approx 0$.