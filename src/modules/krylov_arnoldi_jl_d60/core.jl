function arnoldi_iterate(a::Matrix{Float64}, b::Vector{Float64}, k::Int)
    n = length(b)
    q = zeros(Float64, n, k + 1)
    h = zeros(Float64, k + 1, k)
    nb = sqrt(sum(abs2, b))
    q[:, 1] = b ./ nb
    for j in 1:k
        v = a * q[:, j]
        for i in 1:j
            h[i, j] = sum(q[:, i] .* v)
            v .-= h[i, j] .* q[:, i]
        end
        h[j + 1, j] = sqrt(sum(abs2, v))
        if h[j + 1, j] > 1e-12
            q[:, j + 1] = v ./ h[j + 1, j]
        end
    end
    return ArnoldiFact(q, h, k)
end
