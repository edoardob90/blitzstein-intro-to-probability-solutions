Let $S$ be event that a man in the US is a smoker and $C$ be event man has
cancer.
From problem conditions:
\begin{flalign*}
	P(S) = 0.216

	P(C|S) = 23P(C|S^c)

	P(C|S^c) = (1)/(23) P(C|S)

\end{flalign*}
Lets use Bayes' theorem
\begin{flalign*}
	P(S|C)  = (P(S)P(C|S))/(P(C))

	        = (P(S)P(C|S))/(P(S)P(C|S) + P(S^c)P(C|S^c))

	        = (P(S) \cdot 23P(C|S^c))/(P(S)\cdot 23P(C|S^c) + P(S^c)P(C|S^c))

	        = (P(S))/(23P(S) + P(S^c))

	        = (23 \cdot 0.216)/(23 \cdot 0.216 + 0.784)

	        approx 0.864
\end{flalign*}