module ChebyshevCollocStep67

export compute_chebyshev_colloc_67

function compute_chebyshev_colloc_67(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep67
using Test
@testset "ChebyshevCollocStep67 Tests" begin
    @test isfinite(compute_chebyshev_colloc_67(0.5))
end
