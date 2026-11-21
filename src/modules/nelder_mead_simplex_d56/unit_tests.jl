using Test
@testset "nelder_mead_simplex_d56_unit" begin
    @test validate_nonempty_NelderD56([1.0]) == 1
    xopt, fopt = nelder_mead_2d(v -> (v[1] - 3.0)^2 + (v[2] + 2.0)^2, [0.0, 0.0]; maxiter = 100)
    @test verify_close_NelderD56(fopt, 0.0, 1e-6) <= 1e-6
    @test verify_close_NelderD56(xopt[1], 3.0, 1e-3) <= 1e-3
end
