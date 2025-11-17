+ 

    
+ $(1)/(2^{|C|)}$

    
+ For each element of $C$ we have four options for whether this element is in $A$ and/or $B$ and each option has equal probability of occurring.
          An element $x in C$ is in $A subset.eq B$ if and only if ($x in B \text{ and } x in A$) or ($x in B \text{ and } x in.not A$) or ($x in.not B \text{ and } in.not A$), i.e., 3 times out of 4.
          Thus, the probability that $x in A subset.eq B$ is $3/4$ and $P(A subset.eq B) = (3/4)^{100}$.

          Another way to see this is by using the naive definition of probability.
          The sample space consists of 100 binary pairs where 1 in the 1st slot of the $i$-th pair indicates that the $i$-th element of $C$ is in $A$ and 1 in the 2nd slot indicates that the element is in $B$.
          Hence, $|S| = 4^{100}$.
          The number of elements in the set $X$ of outcomes corresponding to $A subset.eq B$ can be counted as
          $|X| = sum_(i=0)^(100) binom(100, i)2^i = 3^{100}.$
          The binomial coefficient accounts for the number of $i$-element subsets $B$ of $C$ and $2^i$ is the number of all subsets $A$ of $B$.
          This gives $P(A subset.eq B) = |X| / |S| = (3/4)^{100}.$

    
+ Let $p$ be a randomly selected person from $C$ sampled without
          replacement.

          $P(p in A union p in B) = (1)/(2) + (1)/(2) - (1)/(4) = \frac{3}
              {4}$.

          $P(A union B = C) = (P(p in A union p in B))^{|C|} = \left((3)/(4)\right)^
              {|C|}.$