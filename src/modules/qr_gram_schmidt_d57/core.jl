function mgs_qr(A::Matrix{Float64})
    m, n = size(A)
    Q = copy(A)
    R = zeros(Float64, n, n)
    for k in 1:n
        nrm = sqrt(sum(Q[:, k] .^ 2))
        R[k, k] = nrm
        Q[:, k] ./= nrm
        for j in (k + 1):n
            R[k, j] = sum(Q[:, k] .* Q[:, j])
            Q[:, j] .-= R[k, j] .* Q[:, k]
        end
    end
    return Q, R
end
