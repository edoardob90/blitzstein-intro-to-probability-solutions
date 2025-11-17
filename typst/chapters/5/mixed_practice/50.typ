By symmetry, and by X and Y being independent and identically distributed, the chance that X should be smaller than Y should not be different than the chance that Y should be smaller than X.
Furthermore, from independence, joint pdf, $g(x, y) = f_X(x) f_Y(y)$
\begin{flalign}
    P (X < Y)  = integral_(y=-infinity)^(infinity) integral_(t = -infinity)^(y) f_X(x) f_Y(y) dt dy 

     = integral_(y = -infinity)^(infinity) F(y) f(y) dy 

     = (1)/(2) 
\end{flalign}
When X and Y are not independent say X = Y + 1, (assume the existence of such X and Y), then, $P(X < Y) = 0$ and $P(Y < X) = 1$
When X and Y are not identically distributed, say $X \sim \text{Unif}(0, 1)$ and $Y \sim \text{Unif}(-1, 0)$
then, $P(X < Y) = 1$ and $P(Y < X) = 0$