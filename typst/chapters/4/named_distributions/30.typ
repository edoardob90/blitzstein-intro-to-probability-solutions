+ 

+ $
\text{E}(Xg(X)) = sum_(x=0)^(infinity)xg(x)\frac{\text{e}^{-\lambda}
(\lambda)^{x}}{x!} 

= sum_(x=1)^(infinity)xg(x)\frac{\text{e}^{-\lambda}
(\lambda)^{x}}{x!} 

= \lambdasum_(x=1)^(infinity)g(x)\frac{\text{e}^{-\lambda}
(\lambda)^{x-1}}{(x-1)!} 

= \lambdasum_(x=0)^(infinity)g(x+1)\frac{\text{e}^{-\lambda}
(\lambda)^{x}}{(x)!} = \lambda\text{E}(g(X+1))
$

+ $
\text{E}(X^{3}) = \text{E}(XX^{2}) 

= \lambda\text{E}((X+1)^{2}) 

= \lambda(\text{E}(X^{2}) + \text{E}(2X) + 1) 

= \lambda(\lambda\text{E}(X+1) +
2\lambda + 1) = \lambda(\lambda(\lambda + 1) + 2\lambda + 1) 

= \lambda(\lambda^{2} + 3\lambda + 1)
$