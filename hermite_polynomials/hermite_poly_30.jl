module HermitePolyOrder30

export evaluate_hermite_poly_30

function evaluate_hermite_poly_30(x::Float64)::Float64
    if 30 == 0
        return 1.0
    elseif 30 == 1
        return 2.0 * x
    end
    p0 = 1.0
    p1 = 2.0 * x
    for k in 1:(30 - 1)
        p_next = 2.0 * x * p1 - 2.0 * k * p0
        p0 = p1
        p1 = p_next
    end
    return p1
end

end

using .HermitePolyOrder30
using Test
@testset "HermitePolyOrder30 Tests" begin
    @test isfinite(evaluate_hermite_poly_30(0.5))
end
