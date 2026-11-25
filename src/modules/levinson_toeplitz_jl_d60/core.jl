function levinson_solve(r::Vector{Float64}, y::Vector{Float64})
    n = length(y)
    x = zeros(Float64, n)
    a = zeros(Float64, n)
    x[1] = y[1] / r[1]
    a[1] = 1.0
    alpha = r[1]
    for k in 2:n
        beta = sum(r[k - j + 1] * a[j] for j in 1:(k - 1))
        kappa = -beta / alpha
        a_new = copy(a)
        for j in 2:(k - 1)
            a_new[j] = a[j] + kappa * a[k - j + 1]
        end
        a_new[k] = kappa
        a = a_new
        alpha *= (1.0 - kappa * kappa)
        err = y[k] - sum(r[k - j + 1] * x[j] for j in 1:(k - 1))
        for j in 1:k
            x[j] += (err / alpha) * a[k - j + 1]
        end
    end
    res = sqrt(sum((sum(r[abs(i - j) + 1] * x[j] for j in 1:n) - y[i])^2 for i in 1:n))
    return ToeplitzSolution(x, res, n)
end
