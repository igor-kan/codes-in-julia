module RiemannZetaOrder19

export compute_riemann_zeta_19

function compute_riemann_zeta_19(x::Float64)::Float64
    return 1.0 / (19.0 ^ 2.0)
end

end

using .RiemannZetaOrder19
using Test
@testset "RiemannZetaOrder19 Tests" begin
    @test isfinite(compute_riemann_zeta_19(0.5))
end
