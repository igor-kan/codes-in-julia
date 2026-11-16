function solve_sym_toeplitz(
    ::LevinsonToeplitzSolver,
    r::AbstractVector{T},
    b::AbstractVector{T},
) where {T<:AbstractFloat}
    validate_toeplitz(r, b)
    n = length(r)
    y = zeros(T, n)
    x = zeros(T, n)
    refl = zeros(T, max(n - 1, 0))
    err = r[1]
    x[1] = b[1] / err
    n == 1 && return ToeplitzResult{T}(x, refl, err)

    y[1] = -r[2] / err
    refl[1] = y[1]
    err *= (one(T) - y[1]^2)
    err <= zero(T) && throw(LevinsonDomainError("Toeplitz matrix is not positive definite"))

    alpha = (b[2] - r[2] * x[1]) / err
    x_prev = x[1]
    x[1] = x_prev + alpha * y[1]
    x[2] = alpha

    for k in 2:(n - 1)
        num = -r[k + 1] - sum(r[k + 1 - j] * y[j] for j in 1:(k - 1))
        beta = num / err
        refl[k] = beta
        y_old = copy(y[1:(k - 1)])
        for j in 1:(k - 1)
            y[j] = y_old[j] + beta * y_old[k - j]
        end
        y[k] = beta
        err *= (one(T) - beta^2)
        err <= zero(T) && throw(LevinsonDomainError("loss of positive definiteness in Levinson step"))

        alpha = (b[k + 1] - sum(r[k + 2 - j] * x[j] for j in 1:k)) / err
        x_old = copy(x[1:k])
        for j in 1:k
            x[j] = x_old[j] + alpha * y[k + 1 - j]
        end
        x[k + 1] = alpha
    end
    return ToeplitzResult{T}(x, refl, err)
end
