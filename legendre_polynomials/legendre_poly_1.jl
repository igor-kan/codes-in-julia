module LegendrePolyOrder1

export evaluate_legendre_poly_1

function evaluate_legendre_poly_1(x::Float64)::Float64
    if 1 == 0
        return 1.0
    elseif 1 == 1
        return x
    end
    p0 = 1.0
    p1 = x
    for k in 2:1
        p_next = ((2 * k - 1) * x * p1 - (k - 1) * p0) / Float64(k)
        p0 = p1
        p1 = p_next
    end
    return p1
end

end

using .LegendrePolyOrder1
using Test
@testset "LegendrePolyOrder1 Tests" begin
    @test isfinite(evaluate_legendre_poly_1(0.5))
end
