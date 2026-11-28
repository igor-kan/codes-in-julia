using Test
@testset "bezier_de_casteljau_jl_d61_props" begin
    @test sum(parallel_norms_Bezier([[1.0, 2.0], [3.0]])) == 14.0
    pts = [0.0 0.0; 1.0 2.0; 2.0 0.0]
    verify_close_Bezier(de_casteljau(pts, 0.0)[1], 0.0, 1e-14)
    verify_close_Bezier(de_casteljau(pts, 1.0)[2], 0.0, 1e-14)
end
