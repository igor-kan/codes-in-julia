using Test
@testset "toeplitz_levinson_solve_jl_props" begin
    @test sum(parallel_norms_ToeplitzLev([[1.0, 2.0], [3.0]])) == 14.0
    x = solve_symmetric_toeplitz([2.0, 0.0], [4.0, 6.0])
    verify_close_ToeplitzLev(x[1] + x[2], 5.0, 1e-12)
end
