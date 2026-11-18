function mgs_qr(A::Matrix{Float64})
    m, n = size(A)
    Q = copy(A)
    R = zeros(Float64, n, n)
    for k in 1:n
        R[k, k] = sqrt(sum(abs2, @view Q[:, k]))
        Q[:, k] ./= R[k, k]
        for j in (k + 1):n
            R[k, j] = sum(@view(Q[:, k]) .* @view(Q[:, j]))
            Q[:, j] .-= R[k, j] .* @view(Q[:, k])
        end
    end
    return QrFactors(Q, R)
end
