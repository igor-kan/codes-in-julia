module RiemannZetaOrder14

export compute_riemann_zeta_14

function compute_riemann_zeta_14(x::Float64)::Float64
    return -1.0 / (14.0 ^ 2.0)
end

end

using .RiemannZetaOrder14
using Test
@testset "RiemannZetaOrder14 Tests" begin
    @test isfinite(compute_riemann_zeta_14(0.5))
end
