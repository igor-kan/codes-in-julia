module HermitePolyOrder40

export evaluate_hermite_poly_40

function evaluate_hermite_poly_40(x::Float64)::Float64
    if 40 == 0
        return 1.0
    elseif 40 == 1
        return 2.0 * x
    end
    p0 = 1.0
    p1 = 2.0 * x
    for k in 1:(40 - 1)
        p_next = 2.0 * x * p1 - 2.0 * k * p0
        p0 = p1
        p1 = p_next
    end
    return p1
end

end

using .HermitePolyOrder40
using Test
@testset "HermitePolyOrder40 Tests" begin
    @test isfinite(evaluate_hermite_poly_40(0.5))
end
