function solve_sor(solver::SorSolver{T}, A::AbstractMatrix{T}, b::AbstractVector{T}) where {T<:AbstractFloat}
    validate_sor(A, b, solver.cfg.omega)
    n = length(b)
    x = zeros(T, n)
    w = solver.cfg.omega
    for _ in 1:solver.cfg.max_iter
        for i in 1:n
            sigma = zero(T)
            for j in 1:n
                if j != i
                    sigma += A[i, j] * x[j]
                end
            end
            x[i] = (one(T) - w) * x[i] + (w / A[i, i]) * (b[i] - sigma)
        end
        if maximum(abs.(A * x .- b)) <= solver.cfg.tol
            break
        end
    end
    return x
end
