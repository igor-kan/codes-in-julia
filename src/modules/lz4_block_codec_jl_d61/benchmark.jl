t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += length(lz4_compress_block(Vector{UInt8}(codeunits("the quick brown fox jumps over the lazy dog"))).data)
end
ms = (time_ns() - t0) / 1e6
println("lz4_block_codec_jl_d61 ms=", ms, " sink=", sink)
