using Test
@testset "nelder_mead_jl_d60_props" begin
    @test sum(parallel_norms_NelderMead([[1.0, 2.0], [3.0]])) == 14.0
    rosen = v -> (1.0 - v[1])^2 + 100.0 * (v[2] - v[1]^2)^2
    res = nelder_mead_min(rosen, [0.5, 0.5]; max_iter = 600)
    verify_close_NelderMead(res.f_opt, 0.0, 1e-5)
end
