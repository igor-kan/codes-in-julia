module LaguerrePolyOrder152

export evaluate_laguerre_poly_152

function evaluate_laguerre_poly_152(x::Float64)::Float64
    if 152 == 0
        return 1.0
    elseif 152 == 1
        return 1.0 - x
    end
    p0 = 1.0
    p1 = 1.0 - x
    for k in 1:(152 - 1)
        p_next = ((2 * k + 1 - x) * p1 - k * p0) / Float64(k + 1)
        p0 = p1
        p1 = p_next
    end
    return p1
end

end

using .LaguerrePolyOrder152
using Test
@testset "LaguerrePolyOrder152 Tests" begin
    @test isfinite(evaluate_laguerre_poly_152(0.5))
end
