module ChebyshevCollocStep8032
export compute_chebyshev_colloc_8032
function compute_chebyshev_colloc_8032(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep8032,Test
@testset "ChebyshevCollocStep8032" begin
    @test isfinite(compute_chebyshev_colloc_8032(0.5))
end
