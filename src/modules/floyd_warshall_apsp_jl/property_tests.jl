using Test
@testset "floyd_warshall_parallel" begin
    W = [0.0 1.0 10.0; 10.0 0.0 2.0; 3.0 10.0 0.0]
    res = parallel_apsp_batch([W, W .* 2.0])
    @test res[1].dist[1, 3] == 3.0 && res[2].dist[1, 3] == 6.0
end
