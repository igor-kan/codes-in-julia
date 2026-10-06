module ChebyshevCollocStep3002
export compute_chebyshev_colloc_3002
function compute_chebyshev_colloc_3002(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep3002,Test
@testset "ChebyshevCollocStep3002" begin
    @test isfinite(compute_chebyshev_colloc_3002(0.5))
end
