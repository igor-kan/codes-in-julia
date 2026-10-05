module ChebyshevCollocStep2002
export compute_chebyshev_colloc_2002
function compute_chebyshev_colloc_2002(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep2002,Test
@testset "ChebyshevCollocStep2002" begin
    @test isfinite(compute_chebyshev_colloc_2002(0.5))
end
