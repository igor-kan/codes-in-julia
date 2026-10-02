module ChebyshevCollocStep577

export compute_chebyshev_colloc_577

function compute_chebyshev_colloc_577(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep577
using Test
@testset "ChebyshevCollocStep577 Tests" begin
    @test isfinite(compute_chebyshev_colloc_577(0.5))
end
