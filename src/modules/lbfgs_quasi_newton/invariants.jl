function verify_lbfgs_convergence(res::LbfgsResult{T}, f0::T, tol::T) where {T<:AbstractFloat}
    @assert res.converged
    @assert res.grad_norm <= tol
    @assert res.objective <= f0 + T(1e-12)
    return true
end
