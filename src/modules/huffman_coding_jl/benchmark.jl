t0 = time_ns()
sink = 0.0
m=fill(UInt8('a'),64); f=Dict(UInt8('a')=>40,UInt8('b')=>24); t=build_huffman_tree(f); bk=build_codebook(t); for _ in 1:50; sink+=length(fast_encode_symbols(bk,m)); end
ms = (time_ns() - t0) / 1e6
println("huffman_coding_jl ms=", ms, " sink=", sink)
