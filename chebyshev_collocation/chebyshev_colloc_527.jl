module ChebyshevCollocStep527

export compute_chebyshev_colloc_527

function compute_chebyshev_colloc_527(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep527
using Test
@testset "ChebyshevCollocStep527 Tests" begin
    @test isfinite(compute_chebyshev_colloc_527(0.5))
end
