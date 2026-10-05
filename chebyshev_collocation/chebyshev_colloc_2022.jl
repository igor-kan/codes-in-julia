module ChebyshevCollocStep2022
export compute_chebyshev_colloc_2022
function compute_chebyshev_colloc_2022(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep2022,Test
@testset "ChebyshevCollocStep2022" begin
    @test isfinite(compute_chebyshev_colloc_2022(0.5))
end
