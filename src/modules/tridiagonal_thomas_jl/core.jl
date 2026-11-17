function solve_thomas!(::ThomasSolver, x::Vector{T}, sys::TridiagSystem{T}, rhs::Vector{T}) where {T<:AbstractFloat}
    validate_tridiag(sys, rhs, x)
    n = length(rhs)
    cp = similar(rhs)
    dp = similar(rhs)
    cp[1] = sys.du[1] / sys.d[1]
    dp[1] = rhs[1] / sys.d[1]
    @inbounds for i in 2:n
        denom = sys.d[i] - sys.dl[i - 1] * cp[i - 1]
        if i < n
            cp[i] = sys.du[i] / denom
        end
        dp[i] = (rhs[i] - sys.dl[i - 1] * dp[i - 1]) / denom
    end
    x[n] = dp[n]
    @inbounds for i in (n - 1):-1:1
        x[i] = dp[i] - cp[i] * x[i + 1]
    end
    return x
end
