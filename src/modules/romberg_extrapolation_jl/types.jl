struct RombergResult{T<:AbstractFloat}
    value::T
    est_err::T
    levels::Int
end
is_converged(r::RombergResult, tol::Real) = r.est_err <= tol
