using Test
@testset "bridson_poisson_disk_jl_d61_props" begin
    @test sum(parallel_norms_Bridson([[1.0, 2.0], [3.0]])) == 14.0
    first = bridson_poisson_disk(5.0, 5.0, 0.5; k = 10, seed = 42)
    second = bridson_poisson_disk(5.0, 5.0, 0.5; k = 10, seed = 42)
    @test first.points == second.points
    @test length(first.points) >= 10
    @test all(p -> p[1] >= 0.0 && p[1] < 5.0 && p[2] >= 0.0 && p[2] < 5.0, first.points)
end
