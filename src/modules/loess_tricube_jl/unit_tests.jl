using Test
X = hcat(collect(range(-2.0, 2.0; length=25)), collect(range(1.0, 5.0; length=25)) .^ 0.5)
beta = [2.5, -1.2]
y = X * beta .+ 3.0
pred = fit_predict_loess(TricubeLoess(), X, y, X, LoessConfig(span = 0.6))
@test verify_linear_unbiasedness(X, beta, 3.0, pred)
