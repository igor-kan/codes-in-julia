function integrate_rk4_sys(F::Function, t0::Float64, y0::Vector{Float64}, h::Float64, steps::Int)
    y = copy(y0); t = t0
    for _ in 1:steps
        k1 = F(t, y)
        k2 = F(t + 0.5h, y .+ 0.5h .* k1)
        k3 = F(t + 0.5h, y .+ 0.5h .* k2)
        k4 = F(t + h, y .+ h .* k3)
        y .+= (h / 6.0) .* (k1 .+ 2.0 .* k2 .+ 2.0 .* k3 .+ k4)
        t += h
    end
    return Rk4Res(t, y)
end
