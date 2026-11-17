using Test
@testset "huffman_parallel" begin
    freqs = Dict(UInt8('a')=>10, UInt8('b')=>5, UInt8('c')=>2)
    tree = build_huffman_tree(freqs)
    book = build_codebook(tree)
    enc = parallel_encode_chunks(book, [Vector{UInt8}(codeunits("aab")), Vector{UInt8}(codeunits("cca"))])
    @test length(enc) == 2
end
