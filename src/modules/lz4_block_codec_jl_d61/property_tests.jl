using Test
@testset "lz4_block_codec_jl_d61_props" begin
    @test sum(parallel_norms_Lz4([[1.0, 2.0], [3.0]])) == 14.0
    data = UInt8[UInt8((i * 37) % 251) for i in 1:200]
    blob = lz4_compress_block(data)
    @test lz4_decompress_block(blob) == data
    @test length(blob.data) > 0
    @test lz4_decompress_block(lz4_compress_block(UInt8[0x00])) == UInt8[0x00]
end
