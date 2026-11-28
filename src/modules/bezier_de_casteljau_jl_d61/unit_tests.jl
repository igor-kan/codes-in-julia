using Test
@testset "bezier_de_casteljau_jl_d61_unit" begin
    @test validate_nonempty_Bezier([1.0]) == 1
    pts = [0.0 0.0; 1.0 2.0; 2.0 0.0]
    mid = de_casteljau(pts, 0.5)
    verify_close_Bezier(mid[1], 1.0, 1e-12)
    verify_close_Bezier(mid[2], 1.0, 1e-12)
end
