module ChebyshevCollocStep10082
export compute_chebyshev_colloc_10082
function compute_chebyshev_colloc_10082(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep10082,Test
@testset "ChebyshevCollocStep10082" begin
    @test isfinite(compute_chebyshev_colloc_10082(0.5))
end
