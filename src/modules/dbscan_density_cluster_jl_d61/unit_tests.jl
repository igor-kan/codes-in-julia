using Test
@testset "dbscan_density_cluster_jl_d61_unit" begin
    @test validate_nonempty_Dbscan([1.0]) == 1
    pts = [0.0 0.0; 0.1 0.0; 0.0 0.1; 5.0 5.0; 5.1 5.0]
    res = dbscan_labels(pts, 0.3, 2)
    @test res.clusters == 2
    @test res.noise == 0
    @test res.labels[1] == res.labels[2] == res.labels[3]
    @test res.labels[4] == res.labels[5]
    @test res.labels[1] != res.labels[4]
    verify_close_Dbscan(res.clusters, 2.0, 0.0)
end
