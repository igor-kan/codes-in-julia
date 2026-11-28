using Test
@testset "burrows_wheeler_jl_d61_props" begin
    @test sum(parallel_norms_Bwt([[1.0, 2.0], [3.0]])) == 14.0
    enc = bwt_encode("mississippi")
    @test bwt_decode(enc) == "mississippi"
    @test length(enc.text) == length("mississippi") + 1
end
