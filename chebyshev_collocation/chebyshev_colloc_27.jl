module ChebyshevCollocStep27

export compute_chebyshev_colloc_27

function compute_chebyshev_colloc_27(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep27
using Test
@testset "ChebyshevCollocStep27 Tests" begin
    @test isfinite(compute_chebyshev_colloc_27(0.5))
end
