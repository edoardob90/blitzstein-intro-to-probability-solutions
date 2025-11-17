(a) We know that, $X^2 \le X$ with probability 1.
So $bb(E)[X^2] \le bb(E){X}$
\begin{flalign}
    V(X)  = bb(E)[X^2] - bb(E)[X]^2 

     \le \mu - \mu^2 

     \le (1)/(4) \text{taking the minimum of the above quadratic}
\end{flalign}
(b) I have to show that $V(X) = 1/4$ leads to a unique distribution.
From (a), $V(X) \le \mu - \mu^2 \le 1/4$ implies that, $\mu = 1/2$
Now $bb(E)[(X - 1/2)^2] = 1/4$
But $0 \ge (X - 1/2)^2 \le 1/4$ with probability 1. 
To get $bb(E)[(X - 1/2)^2] = 1/4$, we need $(X - 1/2)^2 = 1/4$ with probability 1.
So, 
$
    X = 
    \begin{cases}
        0  \text{with prob p} 

        1  \text{with prob 1 - p}
    \end{cases}
$
Using $\mu = 1/2$ gives us, $p = 1/2$.