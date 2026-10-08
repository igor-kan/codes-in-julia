module ChebyshevCollocStep7002
export compute_chebyshev_colloc_7002
function compute_chebyshev_colloc_7002(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep7002,Test
@testset "ChebyshevCollocStep7002" begin
    @test isfinite(compute_chebyshev_colloc_7002(0.5))
end
