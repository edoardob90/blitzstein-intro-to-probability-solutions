(a) 
$
    I_k = 
    \begin{cases}
        1  \text{if k sets a low or high record}

        0  \text{if k doesn't set a low or high record}
    \end{cases}
$

$P(I_1) = 1$
$P(I_2) = 1$
$P(I_3) = (2)/(3)$
$P(I_4) = (2)/(4)$
and so on.

Now $I = I_1 + ... + I_n $

$bb(E)[I] = 1 + 1 + (2)/(3) dot.c (2)/(100)$ 

(b)
$
    I_k = 
    \begin{cases}
        1  \text{if k sets a low followed by a high }

        0  \text{otherwise}
    \end{cases}
$

$P(I_k) = (1)/(k) (1)/(k+1)$

Now $I = I_1 + ... + I_n $

$bb(E)[I] = (1)/(1 \cdot 2) + dot.c + (1)/(100 \cdot 101)$ 

$bb(E)[I] = 1 - (1)/(101)$

(c)
\begin{flalign}
    P(N > n)  = P(\text{all of 2 to n + 1 fall short of 1}) 

     = (1)/(n + 1)
\end{flalign}

\begin{flalign}
    P(N = n)  = P(N > n - 1) - P(N > n) 

     = (1)/(n(n+1))
\end{flalign}

(d)
\begin{flalign}
    bb(E)[N]  = sum_(i = 1)^(infinity) i P(N = i) 

     = sum_(1)^(infinity) (1)/(i + 1)
\end{flalign}

is unbounded.