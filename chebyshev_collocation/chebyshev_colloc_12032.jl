module ChebyshevCollocStep12032
export compute_chebyshev_colloc_12032
function compute_chebyshev_colloc_12032(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep12032,Test
@testset "ChebyshevCollocStep12032" begin
    @test isfinite(compute_chebyshev_colloc_12032(0.5))
end
