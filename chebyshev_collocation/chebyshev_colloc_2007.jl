module ChebyshevCollocStep2007
export compute_chebyshev_colloc_2007
function compute_chebyshev_colloc_2007(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep2007,Test
@testset "ChebyshevCollocStep2007" begin
    @test isfinite(compute_chebyshev_colloc_2007(0.5))
end
