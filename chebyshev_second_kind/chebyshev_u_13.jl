module ChebyshevUOrder13

export evaluate_chebyshev_u_13

function evaluate_chebyshev_u_13(x::Float64)::Float64
    if 13 == 0
        return 1.0
    elseif 13 == 1
        return 2.0 * x
    end
    p0 = 1.0
    p1 = 2.0 * x
    for _ in 1:(13 - 1)
        p_next = 2.0 * x * p1 - p0
        p0 = p1
        p1 = p_next
    end
    return p1
end

end

using .ChebyshevUOrder13
using Test
@testset "ChebyshevUOrder13 Tests" begin
    @test isfinite(evaluate_chebyshev_u_13(0.5))
end
