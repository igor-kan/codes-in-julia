module ChebyshevCollocStep14032
export compute_chebyshev_colloc_14032
function compute_chebyshev_colloc_14032(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep14032,Test
@testset "ChebyshevCollocStep14032" begin
    @test isfinite(compute_chebyshev_colloc_14032(0.5))
end
