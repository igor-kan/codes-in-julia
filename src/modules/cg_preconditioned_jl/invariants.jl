function verify_pcg_solution(A::Matrix{T}, b::Vector{T}, sol::CgSolution{T}, tol::T) where {T<:AbstractFloat}
    res = norm(A * sol.x - b)
    @assert sol.converged
    @assert res <= tol * max(one(T), norm(b))
    return true
end
