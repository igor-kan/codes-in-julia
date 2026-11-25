using Test
@testset "nelder_mead_jl_d60_unit" begin
    @test validate_nonempty_NelderMead([1.0]) == 1
    obj = v -> (v[1] - 2.0)^2 + (v[2] + 3.0)^2
    res = nelder_mead_min(obj, [0.0, 0.0])
    verify_close_NelderMead(res.f_opt, 0.0, 1e-8)
end
