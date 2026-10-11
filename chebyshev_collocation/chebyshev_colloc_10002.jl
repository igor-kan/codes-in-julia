module ChebyshevCollocStep10002
export compute_chebyshev_colloc_10002
function compute_chebyshev_colloc_10002(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep10002,Test
@testset "ChebyshevCollocStep10002" begin
    @test isfinite(compute_chebyshev_colloc_10002(0.5))
end
