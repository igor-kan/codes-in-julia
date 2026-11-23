using Test
@testset "tridiag_thomas_jl_d58_props" begin
    @test sum(parallel_norms_TdmaD58([[1.0, 2.0], [3.0]])) == 14.0
    x = solve_tdma([0.0, 1.0], [5.0, 5.0], [1.0, 0.0], [7.0, 11.0])
    @test verify_close_TdmaD58(5.0*x[1] + x[2], 7.0, 1e-12) <= 1e-12
end
