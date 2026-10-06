module ChebyshevCollocStep3022
export compute_chebyshev_colloc_3022
function compute_chebyshev_colloc_3022(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep3022,Test
@testset "ChebyshevCollocStep3022" begin
    @test isfinite(compute_chebyshev_colloc_3022(0.5))
end
