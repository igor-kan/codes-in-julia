module ChebyshevCollocStep5072
export compute_chebyshev_colloc_5072
function compute_chebyshev_colloc_5072(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep5072,Test
@testset "ChebyshevCollocStep5072" begin
    @test isfinite(compute_chebyshev_colloc_5072(0.5))
end
