module HermitePolyOrder65

export evaluate_hermite_poly_65

function evaluate_hermite_poly_65(x::Float64)::Float64
    if 65 == 0
        return 1.0
    elseif 65 == 1
        return 2.0 * x
    end
    p0 = 1.0
    p1 = 2.0 * x
    for k in 1:(65 - 1)
        p_next = 2.0 * x * p1 - 2.0 * k * p0
        p0 = p1
        p1 = p_next
    end
    return p1
end

end

using .HermitePolyOrder65
using Test
@testset "HermitePolyOrder65 Tests" begin
    @test isfinite(evaluate_hermite_poly_65(0.5))
end
