function verify_thomas_residual(sys::TridiagSystem{Float64}, x::Vector{Float64}, rhs::Vector{Float64})
    res = maximum(abs.(fast_tridiag_mul(sys, x) .- rhs))
    if res > 1e-10
        error("Thomas solver residual $res too large")
    end
    return res
end
