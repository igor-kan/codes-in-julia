using Test
@testset "secant_zero_jl_d59_unit" begin
    @test validate_nonempty_SecantD59([1.0]) == 1
    r = secant_solve(x -> x^2 - 5.0, 2.0, 3.0)
    @test verify_close_SecantD59(r * r, 5.0, 1e-11) <= 1e-11
end
