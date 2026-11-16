using Test, Random
rng = MersenneTwister(19)
X = randn(rng, 40, 2)
beta = [1.5, -0.75]
y = X * beta .+ 2.0
cfg = LoessConfig(span = 0.5)
p_par = parallel_loess_eval(X, y, X, cfg)
p_seq = fit_predict_loess(TricubeLoess(), X, y, X, cfg).fitted
@test maximum(abs.(p_par .- p_seq)) < 1e-11
