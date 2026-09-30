module ChebyshevCollocStep37

export compute_chebyshev_colloc_37

function compute_chebyshev_colloc_37(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep37
using Test
@testset "ChebyshevCollocStep37 Tests" begin
    @test isfinite(compute_chebyshev_colloc_37(0.5))
end
