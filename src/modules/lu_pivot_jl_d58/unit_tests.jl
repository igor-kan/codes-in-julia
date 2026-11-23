using Test
@testset "lu_pivot_jl_d58_unit" begin
    @test validate_nonempty_LuD58([1.0]) == 1
    A = [0.0 1.0; 2.0 3.0]
    b = [2.0, 8.0]
    x = solve_pivoted(A, b)
    @test verify_close_LuD58(x[1], 1.0, 1e-12) <= 1e-12
    @test verify_close_LuD58(x[2], 2.0, 1e-12) <= 1e-12
end
