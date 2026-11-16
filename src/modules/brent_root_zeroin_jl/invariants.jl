function verify_root_residual(f, res::RootOutcome{T}; ftol::T = T(1e-9)) where {T<:AbstractFloat}
    if !res.converged || abs(f(res.root)) > ftol
        throw(BrentDomainError("root residual exceeded tolerance"))
    end
    return true
end
