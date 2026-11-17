function verify_sor_residual(A::Matrix{Float64}, x::Vector{Float64}, b::Vector{Float64}, tol::Float64)
    r = fast_residual_inf(A, x, b)
    if r > tol
        error("SOR residual exceeded tolerance: $r")
    end
    return r
end
