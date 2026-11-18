using Test
@testset "levenberg_marquardt_1d_jl_props" begin
    @test sum(parallel_norms_LmOpt([[1.0, 2.0], [3.0]])) == 14.0
    ts = [0.0, 1.0]; ys = [1.0, exp(-2.0)]
    verify_close_LmOpt(fit_exp_decay_lm(ts, ys, 1.0).param, 2.0, 1e-7)
end
