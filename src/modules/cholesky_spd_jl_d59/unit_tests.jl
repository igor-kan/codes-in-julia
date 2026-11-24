using Test
@testset "cholesky_spd_jl_d59_unit" begin
    @test validate_nonempty_CholD59([1.0]) == 1
    A = [4.0 2.0; 2.0 5.0]
    L = chol_factor(A)
    @test verify_close_CholD59(sum(abs2, L * L' .- A), 0.0, 1e-12) <= 1e-12
end
