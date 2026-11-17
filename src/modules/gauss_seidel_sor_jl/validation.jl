function validate_sor(A::AbstractMatrix, b::AbstractVector, omega::Real)
    n = length(b)
    size(A) == (n, n) || throw(SorError(:dim, "matrix/vector size mismatch"))
    (zero(omega) < omega < 2) || throw(SorError(:omega, "omega must lie in (0, 2)"))
    all(isfinite, A) && all(isfinite, b) || throw(SorError(:nan, "non-finite input"))
    for i in 1:n
        A[i, i] != 0 || throw(SorError(:pivot, "zero diagonal entry"))
    end
end
