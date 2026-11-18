using Test
@testset "levenberg_marquardt_1d_jl_unit" begin
    @test validate_nonempty_LmOpt([1.0]) == 1
    ts = [0.0, 0.5, 1.0, 1.5, 2.0]
    ys = [exp(-1.5 * t) for t in ts]
    st = fit_exp_decay_lm(ts, ys, 0.5)
    verify_close_LmOpt(st.param, 1.5, 1e-8)
end
