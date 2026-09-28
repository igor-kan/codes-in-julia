module HermitePolyOrder25

export evaluate_hermite_poly_25

function evaluate_hermite_poly_25(x::Float64)::Float64
    if 25 == 0
        return 1.0
    elseif 25 == 1
        return 2.0 * x
    end
    p0 = 1.0
    p1 = 2.0 * x
    for k in 1:(25 - 1)
        p_next = 2.0 * x * p1 - 2.0 * k * p0
        p0 = p1
        p1 = p_next
    end
    return p1
end

end

using .HermitePolyOrder25
using Test
@testset "HermitePolyOrder25 Tests" begin
    @test isfinite(evaluate_hermite_poly_25(0.5))
end
