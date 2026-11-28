using Test
@testset "burrows_wheeler_jl_d61_unit" begin
    @test validate_nonempty_Bwt([1.0]) == 1
    enc = bwt_encode("banana")
    @test length(enc.text) == 7
    @test bwt_decode(enc) == "banana"
    @test enc.index >= 1
end
