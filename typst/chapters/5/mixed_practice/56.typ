\begin{flalign}
    bb(E)[Z^2 \Phi(z)]  = \ri x^2 integral_(-infinity)^(x) e^{-(x^2)/(2)} dx
\end{flalign}
Now
$\ri f(z) dz \ri f(z) dz$
if $\ri f(z) dz$ is meant to be $\lim_{a arrow.r infinity} integral_(-a)^(a) f(z) dz$
So 
\begin{flalign}
    bb(E) [z^2 \Phi(z)]  = int x^2 \Phi(x) e^{-(x^2)/(2)} dx 

     = int x^2 \Phi(-x) e^{-(x^2)/(2)} dx 

     = int x^2 (1 - \Phi(x)) e^{-(x^2)/(2)} dx
\end{flalign}

So 
\begin{flalign}
    E[\Phi(z) z^2]   = int x^2 \Phi(x) e^(-(x^2)/(2)) dx 

     = (1)/(2) int x^2 e^{- (x^2)/(2)} 

     = (1)/(2)
\end{flalign}

(b)
$
    P(\Phi(z) lt.eq (2)/(3)) = P (z lt.eq \Phi^{-1} ((2)/(3))) = \Phi(\Phi^{-1} ((2)/(3)))
$

(c)
$
    (1)/(3!)
$