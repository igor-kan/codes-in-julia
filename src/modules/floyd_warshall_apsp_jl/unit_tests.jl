using Test
@testset "floyd_warshall_apsp_jl" begin
    W = [0.0 3.0 Inf 7.0; 8.0 0.0 2.0 Inf; 5.0 Inf 0.0 1.0; 2.0 Inf Inf 0.0]
    res = solve_apsp(FloydWarshallSolver(), W)
    verify_triangle_inequality(res)
    @test res.dist[2, 4] == 3.0
    @test reconstruct_path(res, 2, 4) == [2, 3, 4]
end
