function fast_tridiag_mul(sys::TridiagSystem{Float64}, x::Vector{Float64})
    n = length(x)
    y = Vector{Float64}(undef, n)
    @inbounds for i in 1:n
        v = sys.d[i] * x[i]
        if i > 1; v += sys.dl[i - 1] * x[i - 1]; end
        if i < n; v += sys.du[i] * x[i + 1]; end
        y[i] = v
    end
    return y
end
