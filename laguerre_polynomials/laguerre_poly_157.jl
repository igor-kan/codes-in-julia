module LaguerrePolyOrder157

export evaluate_laguerre_poly_157

function evaluate_laguerre_poly_157(x::Float64)::Float64
    if 157 == 0
        return 1.0
    elseif 157 == 1
        return 1.0 - x
    end
    p0 = 1.0
    p1 = 1.0 - x
    for k in 1:(157 - 1)
        p_next = ((2 * k + 1 - x) * p1 - k * p0) / Float64(k + 1)
        p0 = p1
        p1 = p_next
    end
    return p1
end

end

using .LaguerrePolyOrder157
using Test
@testset "LaguerrePolyOrder157 Tests" begin
    @test isfinite(evaluate_laguerre_poly_157(0.5))
end
