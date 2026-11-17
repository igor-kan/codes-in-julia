function build_huffman_tree(freqs::Dict{UInt8,Int})
    !isempty(freqs) || throw(HuffError(:empty, "empty frequency table"))
    nodes = HuffNode[HuffLeaf(k, v) for (k, v) in sort(collect(freqs); by = x -> x[1])]
    while length(nodes) > 1
        sort!(nodes; by = huff_freq)
        a = popfirst!(nodes)
        b = popfirst!(nodes)
        push!(nodes, HuffBranch(huff_freq(a) + huff_freq(b), a, b))
    end
    return nodes[1]
end

function build_codebook(root::HuffNode)
    book = Dict{UInt8,Vector{Bool}}()
    function walk(nd::HuffNode, prefix::Vector{Bool})
        if nd isa HuffLeaf
            book[nd.sym] = isempty(prefix) ? [false] : copy(prefix)
        elseif nd isa HuffBranch
            walk(nd.left, vcat(prefix, [false]))
            walk(nd.right, vcat(prefix, [true]))
        end
    end
    walk(root, Bool[])
    return book
end

function huffman_decode(root::HuffNode, bits::Vector{Bool}, count::Int)
    out = Vector{UInt8}(undef, count)
    idx = 1
    for i in 1:count
        cur = root
        while cur isa HuffBranch
            b = bits[idx]
            idx += 1
            cur = b ? cur.right : cur.left
        end
        out[i] = (cur::HuffLeaf).sym
    end
    return out
end
