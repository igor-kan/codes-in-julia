module LegendrePolyOrder61

export evaluate_legendre_poly_61

function evaluate_legendre_poly_61(x::Float64)::Float64
    if 61 == 0
        return 1.0
    elseif 61 == 1
        return x
    end
    p0 = 1.0
    p1 = x
    for k in 2:61
        p_next = ((2 * k - 1) * x * p1 - (k - 1) * p0) / Float64(k)
        p0 = p1
        p1 = p_next
    end
    return p1
end

end

using .LegendrePolyOrder61
using Test
@testset "LegendrePolyOrder61 Tests" begin
    @test isfinite(evaluate_legendre_poly_61(0.5))
end
