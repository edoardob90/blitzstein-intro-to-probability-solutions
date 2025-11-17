The probability that the game lasts $n$ rounds is $1/2^{n}$.

Thus, if the winnings for $n$ rounds is $n$, we must compute $sum_(i=1)^(infinity)(i/2^{i})$.

We know that $sum_(i=1)^(infinity)(x^{i})=(x)/(1-x)$. Deriving both sides with respect to x gives $sum_(i=1)^(infinity)(ix^{i-1})=(1)/((1-x)^{2)}$. Multiplying by both sides gives $sum_(i=1)^(infinity)(ix^{i})=(x)/((1-x)^{2)}$. Plugging in $x=1/2$ gives the answer $2$. 

For the second part of the problem we need to find $sum_(i=1)^(infinity)(i^{2}/2^{i})$.

We know $sum_(i=1)^(infinity)(ix^{i})=(x)/((1-x)^{2)}$. Deriving both sides with respect to x again, using the quotient rule, gives $sum_(i=1)^(infinity)(i^{2}x^{i-1})=(1+x)/((1-x)^{3)}$. Multiplying both sides by $x$ gives $sum_(i=1)^(infinity)(i^{2}x^{i})=\frac{x+x^{2}}{(1-x)^{3}}$. Plugging in $x=1/2$ gives the answer of $6$.