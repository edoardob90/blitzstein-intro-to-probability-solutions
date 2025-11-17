+ 

+ $binom(15+9, 9)$

+ $binom(5+9, 9)$

+ Each of 15 bars can be given to any of 10 children, so by orderd sampling with replcement
formula we have $10^{15}$ combinations

+ To count amount of suitable combinations, we can subtract amount of combination, where at
least one child doesn't get any bars (is example of inclusion-exclusion usage case) from
total amount of combinations.

$10^{15} - sum_(i=1)^(9)\left(-1\right)^{i+1}binom(10, i)\left(10-i\right)^{15}$