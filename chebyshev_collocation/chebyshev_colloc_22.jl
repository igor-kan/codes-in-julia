module ChebyshevCollocStep22

export compute_chebyshev_colloc_22

function compute_chebyshev_colloc_22(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep22
using Test
@testset "ChebyshevCollocStep22 Tests" begin
    @test isfinite(compute_chebyshev_colloc_22(0.5))
end
