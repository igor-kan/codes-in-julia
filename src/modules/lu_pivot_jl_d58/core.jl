function solve_pivoted(A_in::Matrix{Float64}, b_in::Vector{Float64})
    A = copy(A_in); b = copy(b_in); n = length(b)
    for k in 1:(n - 1)
        piv = argmax(abs.(A[k:n, k])) + k - 1
        if piv != k
            A[k, :], A[piv, :] = A[piv, :], A[k, :]
            b[k], b[piv] = b[piv], b[k]
        end
        for i in (k + 1):n
            fac = A[i, k] / A[k, k]
            A[i, k:n] .-= fac .* A[k, k:n]
            b[i] -= fac * b[k]
        end
    end
    x = zeros(Float64, n)
    for i in n:-1:1
        s = b[i] - sum(A[i, (i + 1):n] .* x[(i + 1):n])
        x[i] = s / A[i, i]
    end
    return x
end
