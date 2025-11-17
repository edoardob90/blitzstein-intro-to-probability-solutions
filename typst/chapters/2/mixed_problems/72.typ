+ 

+ $p_{n} = a_{n}a + (1-a_{n})b = (a - b)a_{n} + b$

$a_{n+1} = a_{n}a + (1-a_{n})(1-b) = a_{n}(a + b - 1) + 1 - b$

+ $p_{n+1} = (a-b)a_{n+1} + b$
$p_{n+1} = (a-b)((a + b - 1)a_{n} + 1 - b) + b$
$p_{n+1} = (a-b)\left((a + b - 1)\frac{p_{n} - b}{a - b} + 1 - b\right) + b$
$p_{n+1} = (a + b - 1)p_{n} + a + b - 2ab$

+ Let $p = \lim_{n \to infinity} p_{n}$. Taking the limit of both sides of the result of part $b$, we get 
$p = (a + b - 1)p + a + b - 2ab$
$p = (a + b - 2ab)/(2 - (a + b))$