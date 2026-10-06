module ChebyshevCollocStep3007
export compute_chebyshev_colloc_3007
function compute_chebyshev_colloc_3007(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep3007,Test
@testset "ChebyshevCollocStep3007" begin
    @test isfinite(compute_chebyshev_colloc_3007(0.5))
end
