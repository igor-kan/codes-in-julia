using Test
@testset "bridson_poisson_disk_jl_d61_unit" begin
    @test validate_nonempty_Bridson([1.0]) == 1
    sample = bridson_poisson_disk(10.0, 10.0, 1.0; k = 20, seed = 7)
    pts = sample.points
    @test length(pts) >= 5
    @test all(p -> 0.0 <= p[1] < 10.0 && 0.0 <= p[2] < 10.0, pts)
    mind = Inf
    for i in eachindex(pts)
        for j in (i + 1):length(pts)
            dx = pts[i][1] - pts[j][1]
            dy = pts[i][2] - pts[j][2]
            mind = min(mind, sqrt(dx * dx + dy * dy))
        end
    end
    @test mind >= 1.0 - 1e-9
    verify_close_Bridson(sample.radius, 1.0, 0.0)
end
