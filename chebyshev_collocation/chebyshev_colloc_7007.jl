module ChebyshevCollocStep7007
export compute_chebyshev_colloc_7007
function compute_chebyshev_colloc_7007(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep7007,Test
@testset "ChebyshevCollocStep7007" begin
    @test isfinite(compute_chebyshev_colloc_7007(0.5))
end
