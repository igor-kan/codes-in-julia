module ChebyshevCollocStep522

export compute_chebyshev_colloc_522

function compute_chebyshev_colloc_522(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep522
using Test
@testset "ChebyshevCollocStep522 Tests" begin
    @test isfinite(compute_chebyshev_colloc_522(0.5))
end
