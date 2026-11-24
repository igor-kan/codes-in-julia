using Test
@testset "secant_zero_jl_d59_props" begin
    @test sum(parallel_norms_SecantD59([[1.0, 2.0], [3.0]])) == 14.0
    r = secant_solve(x -> x^3 - 8.0, 1.5, 2.5)
    @test verify_close_SecantD59(r, 2.0, 1e-10) <= 1e-10
end
