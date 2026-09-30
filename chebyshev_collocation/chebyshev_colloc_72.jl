module ChebyshevCollocStep72

export compute_chebyshev_colloc_72

function compute_chebyshev_colloc_72(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep72
using Test
@testset "ChebyshevCollocStep72 Tests" begin
    @test isfinite(compute_chebyshev_colloc_72(0.5))
end
