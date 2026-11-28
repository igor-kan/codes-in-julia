function _lexless(u::Vector{UInt8}, v::Vector{UInt8})
    for k in eachindex(u)
        u[k] < v[k] && return true
        u[k] > v[k] && return false
    end
    return false
end

function bwt_encode(s::String)
    bytes = Vector{UInt8}(collect(codeunits(s)))
    push!(bytes, 0x00)
    n = length(bytes)
    rots = [circshift(bytes, -(k - 1)) for k in 1:n]
    order = sortperm(rots, lt = (u, v) -> _lexless(u, v))
    last = UInt8[rots[i][end] for i in order]
    idx = something(findfirst(x -> x == 1, order), 1)
    return BwtEncoded(last, idx)
end

function bwt_decode(enc::BwtEncoded)
    last = enc.text
    n = length(last)
    counts = zeros(Int, 256)
    for b in last
        counts[Int(b) + 1] += 1
    end
    starts = zeros(Int, 256)
    running = 0
    for c in 1:256
        starts[c] = running
        running += counts[c]
    end
    seen = zeros(Int, 256)
    lf = zeros(Int, n)
    for i in 1:n
        c = Int(last[i]) + 1
        lf[i] = starts[c] + seen[c] + 1
        seen[c] += 1
    end
    out = zeros(UInt8, n)
    r = enc.index
    for k in n:-1:1
        out[k] = last[r]
        r = lf[r]
    end
    return String(filter(b -> b != 0x00, out))
end
