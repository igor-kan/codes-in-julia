function solve_tdma(a::Vector{Float64}, b::Vector{Float64}, c::Vector{Float64}, d::Vector{Float64})
    n = length(d)
    cp = zeros(Float64, n)
    dp = zeros(Float64, n)
    cp[1] = c[1] / b[1]
    dp[1] = d[1] / b[1]
    for i in 2:n
        denom = b[i] - a[i] * cp[i - 1]
        cp[i] = c[i] / denom
        dp[i] = (d[i] - a[i] * dp[i - 1]) / denom
    end
    x = zeros(Float64, n)
    x[n] = dp[n]
    for i in (n - 1):-1:1
        x[i] = dp[i] - cp[i] * x[i + 1]
    end
    return x
end
