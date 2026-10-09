module ChebyshevCollocStep8097
export compute_chebyshev_colloc_8097
function compute_chebyshev_colloc_8097(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep8097,Test
@testset "ChebyshevCollocStep8097" begin
    @test isfinite(compute_chebyshev_colloc_8097(0.5))
end
