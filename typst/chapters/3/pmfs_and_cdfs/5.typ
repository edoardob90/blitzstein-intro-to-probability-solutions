+ 

+ $p(n)$ is clearly non-negative. Also, 

$sum_(n=0)^(infinity)p(n) = (1)/(2)sum_(n=0)^(infinity)(1)/(2^{n)} = 
(1)/(2) * (1)/(1 - \frac{1){2}} = 1.$

Thus, $p(n)$ is a valid PMF.

+ $F(x) = sum_(n=0)^(\lfloor x \rfloor)p(n) = (1)/(2)\sum_{n=0}^
{\lfloor x \rfloor}(1)/(2^{n)} = (1)/(2) * (1 - \frac{1)/(2^{\lfloor
x \rfloor + 1)}}{1 - (1)/(2)} = 1 - (1)/(2^{\lfloor x \rfloor + 1)}$

for $x gt.eq 0$ and $0$ for $x < 0$.