function _lz4_length_bytes!(out::Vector{UInt8}, value::Int)
    remaining = value
    while remaining >= 255
        push!(out, 0xff)
        remaining -= 255
    end
    push!(out, UInt8(remaining))
    return nothing
end

function _lz4_emit_sequence!(out::Vector{UInt8}, src::Vector{UInt8}, anchor::Int, lit_len::Int, offset::Int, match_len::Int)
    token_lit = min(lit_len, 15)
    extra_match = match_len - 4
    token_match = min(extra_match, 15)
    push!(out, UInt8((token_lit << 4) | token_match))
    if lit_len >= 15
        _lz4_length_bytes!(out, lit_len - 15)
    end
    for k in 0:(lit_len - 1)
        push!(out, src[anchor + k])
    end
    push!(out, UInt8(offset & 0xff))
    push!(out, UInt8((offset >> 8) & 0xff))
    if extra_match >= 15
        _lz4_length_bytes!(out, extra_match - 15)
    end
    return nothing
end

function _lz4_emit_last!(out::Vector{UInt8}, src::Vector{UInt8}, anchor::Int, lit_len::Int)
    push!(out, UInt8(min(lit_len, 15) << 4))
    if lit_len >= 15
        _lz4_length_bytes!(out, lit_len - 15)
    end
    for k in 0:(lit_len - 1)
        push!(out, src[anchor + k])
    end
    return nothing
end

function lz4_compress_block(src::Vector{UInt8})
    n = length(src)
    out = UInt8[]
    anchor = 1
    i = 1
    while i <= n - 4
        best_len = 0
        best_off = 0
        max_off = min(i - 1, 65535)
        for off in 1:max_off
            j = i - off
            len = 0
            while i + len <= n && src[j + len] == src[i + len]
                len += 1
            end
            if len > best_len
                best_len = len
                best_off = off
            end
        end
        if best_len >= 4
            _lz4_emit_sequence!(out, src, anchor, i - anchor, best_off, best_len)
            i += best_len
            anchor = i
        else
            i += 1
        end
    end
    _lz4_emit_last!(out, src, anchor, n - anchor + 1)
    return Lz4Block(out)
end

function lz4_decompress_block(block::Lz4Block)
    data = block.data
    out = UInt8[]
    p = 1
    m = length(data)
    while p <= m
        token = Int(data[p])
        p += 1
        lit_len = token >> 4
        if lit_len == 15
            while true
                b = Int(data[p])
                p += 1
                lit_len += b
                b == 255 || break
            end
        end
        for _ in 1:lit_len
            push!(out, data[p])
            p += 1
        end
        p > m && break
        offset = Int(data[p]) | (Int(data[p + 1]) << 8)
        p += 2
        match_len = (token & 0x0f) + 4
        if (token & 0x0f) == 15
            while true
                b = Int(data[p])
                p += 1
                match_len += b
                b == 255 || break
            end
        end
        start = length(out) - offset + 1
        for k in 0:(match_len - 1)
            push!(out, out[start + k])
        end
    end
    return out
end
