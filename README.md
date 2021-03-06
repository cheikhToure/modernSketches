# modernSketches
Inria internship on modern stochastic sketching methods for big data ridge regression


# TODO list
--->1st phase - imediate priorities
-> Make sure you read and understand chapters 1 and 2 of my thesis! Chapter 3 will also be good for you, but you can gradually read this over time.
-> Figure out how to compute SA quickly for fast Hadamard tranform
-> See count-sketch and understand how to implement.
-> Implement all the above methods and the conjugate gradients algorithms and compare to the two sketching algorithms. See my code for Conjugate gradients which is also implemented in my package RandomLinearLab

http://www.di.ens.fr/~rgower/software/RandomLinearLab-0.0.tar.gz

--->2nd phase (To do after implementating and testing)
-> Understand or bound from above the convergence rate (2.32) in thesis for when S is a ROS or countmin sketch. Remeber we are using a variant of the "randomized Newton method" since A is positive definite in the ridge regression problem. Thus the expression for the rate is now given by:

$\rho = 1- \lambda_{\min} \E{ A^{1/2} A (S^TAS)^{-1}S^T A^{1/2}}.		(I)$

It is very similar to the rate given for the "randomized Newton method" in equation 2.26. For the Hadamard sketch, you will probably have to bound (I) from above by using the same trick I used for Gaussian sketches, see Lemma 20. For the countmin sketch, you maybe able to analysis (I) directly.
