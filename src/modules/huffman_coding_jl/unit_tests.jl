using Test
@testset "huffman_coding_jl" begin
    msg = Vector{UInt8}(codeunits("abracadabra_banana"))
    freqs = Dict{UInt8,Int}()
    for b in msg; freqs[b] = get(freqs, b, 0) + 1; end
    tree = build_huffman_tree(freqs)
    book = build_codebook(tree)
    verify_prefix_free(book)
    bits = fast_encode_symbols(book, msg)
    @test huffman_decode(tree, bits, length(msg)) == msg
end
