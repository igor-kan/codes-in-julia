module ChebyshevCollocStep8002
export compute_chebyshev_colloc_8002
function compute_chebyshev_colloc_8002(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep8002,Test
@testset "ChebyshevCollocStep8002" begin
    @test isfinite(compute_chebyshev_colloc_8002(0.5))
end
