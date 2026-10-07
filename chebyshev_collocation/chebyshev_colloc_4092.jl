module ChebyshevCollocStep4092
export compute_chebyshev_colloc_4092
function compute_chebyshev_colloc_4092(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep4092,Test
@testset "ChebyshevCollocStep4092" begin
    @test isfinite(compute_chebyshev_colloc_4092(0.5))
end
