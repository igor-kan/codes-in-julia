using Test
@testset "dbscan_density_cluster_jl_d61_props" begin
    @test sum(parallel_norms_Dbscan([[1.0, 2.0], [3.0]])) == 14.0
    iso = [0.0 0.0; 0.1 0.0; 10.0 10.0]
    res2 = dbscan_labels(iso, 0.3, 3)
    @test res2.clusters == 0
    @test res2.noise == 3
    @test all(==(0), res2.labels)
    verify_close_Dbscan(res2.noise, 3.0, 0.0)
end
