module LegendrePolyOrder171

export evaluate_legendre_poly_171

function evaluate_legendre_poly_171(x::Float64)::Float64
    if 171 == 0
        return 1.0
    elseif 171 == 1
        return x
    end
    p0 = 1.0
    p1 = x
    for k in 2:171
        p_next = ((2 * k - 1) * x * p1 - (k - 1) * p0) / Float64(k)
        p0 = p1
        p1 = p_next
    end
    return p1
end

end

using .LegendrePolyOrder171
using Test
@testset "LegendrePolyOrder171 Tests" begin
    @test isfinite(evaluate_legendre_poly_171(0.5))
end
