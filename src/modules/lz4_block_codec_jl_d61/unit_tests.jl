using Test
@testset "lz4_block_codec_jl_d61_unit" begin
    @test validate_nonempty_Lz4([1.0]) == 1
    src = Vector{UInt8}(codeunits("abracadabra abracadabra abracadabra"))
    enc = lz4_compress_block(src)
    dec = lz4_decompress_block(enc)
    @test dec == src
    @test length(enc.data) < length(src)
    @test lz4_decompress_block(lz4_compress_block(UInt8[])) == UInt8[]
    verify_close_Lz4(Float64(length(dec)), Float64(length(src)), 0.0)
end
