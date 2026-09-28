module HermitePolyOrder155

export evaluate_hermite_poly_155

function evaluate_hermite_poly_155(x::Float64)::Float64
    if 155 == 0
        return 1.0
    elseif 155 == 1
        return 2.0 * x
    end
    p0 = 1.0
    p1 = 2.0 * x
    for k in 1:(155 - 1)
        p_next = 2.0 * x * p1 - 2.0 * k * p0
        p0 = p1
        p1 = p_next
    end
    return p1
end

end

using .HermitePolyOrder155
using Test
@testset "HermitePolyOrder155 Tests" begin
    @test isfinite(evaluate_hermite_poly_155(0.5))
end
