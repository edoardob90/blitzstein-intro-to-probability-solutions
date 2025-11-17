Let $A_{i}$ be the event that the $i$-th student takes the same seat on both 
days. The desired probability then is $1 - P(\bigcup\limits_{i=1}^{20}A_{i}).$ 
By inclusion exclusion principle, 

$P(\bigcup\limits_{i=1}^{20}A_{i}) = \sum_{i}P(A_{i}) - 
\sum_{i<j}P(A_{i} sect A_{j}) + \sum_{i<j<k}P(A_{i} sect A_{j} sect A_{k}) - 
dot.c + (-1)^{21}P(A_{1} sect dot.c sect A_{20})$,
 
where $P(A_i) = (19!)/(20!)$, $P(A_i sect A_j) = (18!)/(20!)$ and so
on by naive definition of probability.

Hence,

\begin{flalign}
P(\bigcup\limits_{i=1}^{20}A_{i})  = sum_(i=1)^(20)(1)/(20) - 
\sum_{1lt.eq i<jlt.eq 20}(1)/(20*19) + 
\sum_{1 lt.eq i<j<k lt.eq 20}(1)/(20*19*18) - 
dot.c + (1)/(20!) \nonumber  

 = 1 - binom(20, 2)(1)/(20*19) + binom(20, 3)(1)/(20*19*18) - 
dot.c + (1)/(20!) \nonumber  

 = 1 - (1)/(2!) + (1)/(3!) - dot.c + (1)/(20!) \nonumber  

 approx 1 - e^{-1} \nonumber
\end{flalign}