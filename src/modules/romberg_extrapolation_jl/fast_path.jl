function fast_composite_trap(f::Function, a::Float64, b::Float64, n::Int)
    h = (b - a) / n
    acc = 0.5 * (f(a) + f(b))
    @inbounds for i in 1:(n - 1)
        acc += f(a + i * h)
    end
    return acc * h
end
