function lanczos_tridiag(A::Matrix{Float64}, v0::Vector{Float64}, k::Int)
    q_prev = zeros(Float64, length(v0))
    q = v0 ./ sqrt(sum(abs2, v0))
    alpha = zeros(Float64, k)
    beta = zeros(Float64, max(k - 1, 0))
    for j in 1:k
        w = A * q
        alpha[j] = sum(q .* w)
        w .-= alpha[j] .* q
        if j > 1
            w .-= beta[j - 1] .* q_prev
        end
        if j < k
            beta[j] = sqrt(sum(abs2, w))
            q_prev = q
            q = beta[j] > 1e-14 ? (w ./ beta[j]) : q
        end
    end
    return LanczosSubspace(alpha, beta)
end
