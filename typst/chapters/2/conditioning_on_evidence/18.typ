$P(A | B) = (P(A sect B))/(P(B)) = (P(B) - P(B sect A^c))/(P(B)) = 1 - (P(B sect A^c))/(P(B)).$

Note that $P(A^c) = P(A^c sect B) + P(A^c sect B^c)$.
Hence, $P(B sect A^c) = P(A^c) - P(A^c sect B^c) = 0 - P(A^c sect B^c) = -P(A^c sect B^c)$.

Since probabilities are nonnegative, this implies $P(B sect A^c) = P(A^c sect B^c) = 0$.

Thus, $P(A | B) = 1$.