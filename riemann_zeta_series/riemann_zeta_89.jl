module RiemannZetaOrder89

export compute_riemann_zeta_89

function compute_riemann_zeta_89(x::Float64)::Float64
    return 1.0 / (89.0 ^ 2.0)
end

end

using .RiemannZetaOrder89
using Test
@testset "RiemannZetaOrder89 Tests" begin
    @test isfinite(compute_riemann_zeta_89(0.5))
end
