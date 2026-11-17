struct SorConfig{T<:AbstractFloat}
    omega::T
    tol::T
    max_iter::Int
    check_diag::Bool
end
SorConfig(omega::T, tol::T, max_iter::Int) where {T<:AbstractFloat} = SorConfig{T}(omega, tol, max_iter, true)
