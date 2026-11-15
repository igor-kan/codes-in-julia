using LinearAlgebra

function solve_pcg(
    solver::JacobiCgSolver,
    A::Matrix{T},
    b::Vector{T},
    cfg::CgConfig{T} = CgConfig(T(1e-10), 1000),
) where {T<:AbstractFloat}
    validate_spd_system(A, b)
    n = length(b)
    inv_diag = solver.use_jacobi ? [one(T) / A[i, i] for i in 1:n] : ones(T, n)
    x = zeros(T, n)
    r = copy(b)
    z = inv_diag .* r
    p = copy(z)
    ap = zeros(T, n)
    rz_old = simd_dot(r, z)
    converged = false
    iters = 0
    for k in 1:cfg.max_iter
        mul!(ap, A, p)
        pap = simd_dot(p, ap)
        pap <= T(1e-30) && break
        alpha = rz_old / pap
        simd_axpy!(alpha, p, x)
        simd_axpy!(-alpha, ap, r)
        iters = k
        if norm(r) <= cfg.tol
            converged = true
            break
        end
        @. z = inv_diag * r
        rz_new = simd_dot(r, z)
        beta = rz_new / rz_old
        @. p = z + beta * p
        rz_old = rz_new
    end
    return CgSolution{T}(x, iters, norm(b - A * x), converged)
end
