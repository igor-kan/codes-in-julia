using Test
@testset "lu_pivot_jl_d58_props" begin
    @test sum(parallel_norms_LuD58([[1.0, 2.0], [3.0]])) == 14.0
    A = [2.0 1.0; 1.0 3.0]
    x = solve_pivoted(A, [3.0, 4.0])
    @test verify_close_LuD58(sum(abs2, A * x .- [3.0, 4.0]), 0.0, 1e-12) <= 1e-12
end
