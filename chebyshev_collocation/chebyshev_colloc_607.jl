module ChebyshevCollocStep607

export compute_chebyshev_colloc_607

function compute_chebyshev_colloc_607(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep607
using Test
@testset "ChebyshevCollocStep607 Tests" begin
    @test isfinite(compute_chebyshev_colloc_607(0.5))
end
