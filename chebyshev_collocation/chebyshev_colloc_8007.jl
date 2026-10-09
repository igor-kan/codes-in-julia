module ChebyshevCollocStep8007
export compute_chebyshev_colloc_8007
function compute_chebyshev_colloc_8007(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep8007,Test
@testset "ChebyshevCollocStep8007" begin
    @test isfinite(compute_chebyshev_colloc_8007(0.5))
end
