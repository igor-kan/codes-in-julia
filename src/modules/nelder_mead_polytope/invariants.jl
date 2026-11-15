function verify_nm_result(fn, x0::Vector{T}, res::NmResult{T}) where {T<:AbstractFloat}
    @assert res.fx <= T(fn(x0)) + T(1e-12)
    @assert all(isfinite, res.x)
    return true
end
