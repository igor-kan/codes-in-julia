function chol_factor(A::Matrix{Float64})
    n = size(A, 1)
    L = zeros(Float64, n, n)
    for i in 1:n
        for j in 1:i
            s = sum(L[i, 1:(j - 1)] .* L[j, 1:(j - 1)]; init = 0.0)
            if i == j
                L[i, j] = sqrt(A[i, i] - s)
            else
                L[i, j] = (A[i, j] - s) / L[j, j]
            end
        end
    end
    return L
end
